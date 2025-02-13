import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'app_state.dart';
import 'replacements.dart';

/// Signature for the callback that reports when the user changes the selection
/// (including the cursor location).
typedef SelectionChangedCallback =
    void Function(TextSelection selection, SelectionChangedCause? cause);

/// Signature for a widget builder that builds a context menu for the given
/// editable field.
typedef BasicTextFieldContextMenuBuilder =
    Widget Function(
      BuildContext context,
      ClipboardStatus clipboardStatus,
      VoidCallback? onCopy,
      VoidCallback? onCut,
      VoidCallback? onPaste,
      VoidCallback? onSelectAll,
      VoidCallback? onLookUp,
      VoidCallback? onLiveTextInput,
      VoidCallback? onSearchWeb,
      VoidCallback? onShare,
      TextSelectionToolbarAnchors anchors,
    );

/// A basic text input client. An implementation of [DeltaTextInputClient] meant to
/// send/receive information from the framework to the platform's text input plugin
/// and vice-versa.
class BasicTextInputClient extends StatefulWidget {
  const BasicTextInputClient({
    super.key,
    required this.controller,
    required this.style,
    required this.focusNode,
    this.selectionControls,
    this.contextMenuBuilder,
    required this.onSelectionChanged,
    required this.showSelectionHandles,
  });

  final TextEditingController controller;
  final TextStyle style;
  final FocusNode focusNode;
  final TextSelectionControls? selectionControls;
  final bool showSelectionHandles;
  final SelectionChangedCallback onSelectionChanged;
  final BasicTextFieldContextMenuBuilder? contextMenuBuilder;

  @override
  State<BasicTextInputClient> createState() => BasicTextInputClientState();
}

class BasicTextInputClientState extends State<BasicTextInputClient>
    with TextSelectionDelegate, TextInputClient, DeltaTextInputClient {
  final GlobalKey _textKey = GlobalKey();
  late AppStateWidgetState manager;
  final ClipboardStatusNotifier? _clipboardStatus =
      kIsWeb ? null : ClipboardStatusNotifier();

  @override
  void initState() {
    super.initState();
    _clipboardStatus?.addListener(_onChangedClipboardStatus);
    _liveTextInputStatus?.addListener(_onChangedLiveTextInputStatus);
    widget.focusNode.addListener(_handleFocusChanged);
    widget.controller.addListener(_didChangeTextEditingValue);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    manager = AppStateWidget.of(context);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_didChangeTextEditingValue);
    widget.focusNode.removeListener(_handleFocusChanged);
    _liveTextInputStatus?.removeListener(_onChangedLiveTextInputStatus);
    _liveTextInputStatus?.dispose();
    _clipboardStatus?.removeListener(_onChangedClipboardStatus);
    _clipboardStatus?.dispose();
    super.dispose();
  }

  /// [DeltaTextInputClient] method implementations.
  @override
  void connectionClosed() {
    if (_hasInputConnection) {
      _textInputConnection!.connectionClosedReceived();
      _textInputConnection = null;
      _lastKnownRemoteTextEditingValue = null;
      widget.focusNode.unfocus();
      widget.controller.clearComposing();
    }
  }

  @override
  // Will not implement.
  AutofillScope? get currentAutofillScope => throw UnimplementedError();

  @override
  TextEditingValue? get currentTextEditingValue => _value;

  @override
  void didChangeInputControl(
    TextInputControl? oldControl,
    TextInputControl? newControl,
  ) {
    if (_hasFocus && _hasInputConnection) {
      oldControl?.hide();
      newControl?.show();
    }
  }

  @override
  void insertTextPlaceholder(Size size) {
    // Will not implement. This method is used for Scribble support.
  }

  @override
  void performAction(TextInputAction action) {
    // Will not implement.
  }

  @override
  void performPrivateCommand(String action, Map<String, dynamic> data) {
    // Will not implement.
  }

  @override
  void performSelector(String selectorName) {
    final Intent? intent = intentForMacOSSelector(selectorName);

    if (intent != null) {
      final BuildContext? primaryContext = primaryFocus?.context;
      if (primaryContext != null) {
        Actions.invoke(primaryContext, intent);
      }
    }
  }

  @override
  void removeTextPlaceholder() {
    // Will not implement. This method is used for Scribble support.
  }

  @override
  void showAutocorrectionPromptRect(int start, int end) {
    // Will not implement.
  }

  @override
  bool showToolbar() {
    // On the web use provided native dom elements to provide clipboard functionality.
    if (kIsWeb) return false;

    if (_selectionOverlay == null || _selectionOverlay!.toolbarIsVisible) {
      return false;
    }

    _liveTextInputStatus?.update();
    _selectionOverlay!.showToolbar();

    return true;
  }

  @override
  void updateEditingValue(TextEditingValue value) {
    /* Not using */
  }

  @override
  void updateEditingValueWithDeltas(List<TextEditingDelta> textEditingDeltas) {
    TextEditingValue value = _value;

    for (final TextEditingDelta delta in textEditingDeltas) {
      value = delta.apply(value);
    }

    _lastKnownRemoteTextEditingValue = value;

    if (value == _value) {
      // This is possible, for example, when the numeric keyboard is input,
      // the engine will notify twice for the same value.
      // Track at https://github.com/flutter/flutter/issues/65811
      return;
    }

    final bool selectionChanged =
        _value.selection.start != value.selection.start ||
        _value.selection.end != value.selection.end;
    manager.updateTextEditingDeltaHistory(textEditingDeltas);

    _value = value;

    if (widget.controller is ReplacementTextEditingController) {
      for (final TextEditingDelta delta in textEditingDeltas) {
        (widget.controller as ReplacementTextEditingController)
            .syncReplacementRanges(delta);
      }
    }

    if (selectionChanged) {
      manager.updateToggleButtonsStateOnSelectionChanged(
        value.selection,
        widget.controller as ReplacementTextEditingController,
      );
    }
  }

  @override
  void updateFloatingCursor(RawFloatingCursorPoint point) {
    // Will not implement.
  }

  /// Open/close [DeltaTextInputClient]
  TextInputConnection? _textInputConnection;
  bool get _hasInputConnection => _textInputConnection?.attached ?? false;

  TextEditingValue get _value => widget.controller.value;
  set _value(TextEditingValue value) {
    widget.controller.value = value;
  }

  // Keep track of the last known text editing value from the engine so we do not
  // send an update message if we don't have to.
  TextEditingValue? _lastKnownRemoteTextEditingValue;

  void _openInputConnection() {
    // Open an input connection if one does not already exist, as well as set
    // its style. If one is active then show it.
    if (!_hasInputConnection) {
      final TextEditingValue localValue = _value;

      _textInputConnection = TextInput.attach(
        this,
        const TextInputConfiguration(
          enableDeltaModel: true,
          inputAction: TextInputAction.newline,
          inputType: TextInputType.multiline,
        ),
      );
      final TextStyle style = widget.style;

      _updateSizeAndTransform();
      _schedulePeriodicPostFrameCallbacks();

      _textInputConnection!
        ..setStyle(
          fontFamily: style.fontFamily,
          fontSize: style.fontSize,
          fontWeight: style.fontWeight,
          textDirection: _textDirection, // make this variable.
          textAlign: TextAlign.left, // make this variable.
        )
        ..setEditingState(localValue)
        ..show();

      _lastKnownRemoteTextEditingValue = localValue;
    } else {
      _textInputConnection!.show();
    }
  }

  void _closeInputConnectionIfNeeded() {
    // Close input connection if one is active.
    if (_hasInputConnection) {
      _textInputConnection!.close();
      _textInputConnection = null;
      _lastKnownRemoteTextEditingValue = null;
    }
  }

  void _openOrCloseInputConnectionIfNeeded() {
    // Open input connection on gaining focus.
    // Close input connection on focus loss.
    if (_hasFocus && widget.focusNode.consumeKeyboardToken()) {
      _openInputConnection();
    } else if (!_hasFocus) {
      _closeInputConnectionIfNeeded();
      widget.controller.clearComposing();
    }
  }

  /// Field focus + keyboard request.
  bool get _hasFocus => widget.focusNode.hasFocus;

  void requestKeyboard() {
    if (_hasFocus) {
      _openInputConnection();
    } else {
      widget.focusNode.requestFocus();
    }
  }

  void _handleFocusChanged() {
    // Open or close input connection depending on focus.
    _openOrCloseInputConnectionIfNeeded();
    if (_hasFocus) {
      if (!_value.selection.isValid) {
        // Place cursor at the end if the selection is invalid when we receive focus.
        final TextSelection validSelection = TextSelection.collapsed(
          offset: _value.text.length,
        );
        _handleSelectionChanged(validSelection, null);
        manager.updateToggleButtonsStateOnSelectionChanged(
          validSelection,
          widget.controller as ReplacementTextEditingController,
        );
      }
    }
  }

  /// Misc.
  TextDirection get _textDirection => Directionality.of(context);

  TextSpan _buildTextSpan() {
    return widget.controller.buildTextSpan(
      context: context,
      style: widget.style,
      withComposing: true,
    );
  }

  void _onChangedClipboardStatus() {
    setState(() {
      // Inform the widget that the value of clipboardStatus has changed.
    });
  }

  // These actions have yet to be implemented for this sample.
  static final Map<Type, Action<Intent>> _unsupportedActions =
      <Type, Action<Intent>>{
        DeleteToNextWordBoundaryIntent: DoNothingAction(consumesKey: false),
        DeleteToLineBreakIntent: DoNothingAction(consumesKey: false),
        ExtendSelectionToNextWordBoundaryIntent: DoNothingAction(
          consumesKey: false,
        ),
        ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent:
            DoNothingAction(consumesKey: false),
        ExtendSelectionToLineBreakIntent: DoNothingAction(consumesKey: false),
        ExtendSelectionVerticallyToAdjacentLineIntent: DoNothingAction(
          consumesKey: false,
        ),
        ExtendSelectionVerticallyToAdjacentPageIntent: DoNothingAction(
          consumesKey: false,
        ),
        ExtendSelectionToNextParagraphBoundaryIntent: DoNothingAction(
          consumesKey: false,
        ),
        ExtendSelectionToDocumentBoundaryIntent: DoNothingAction(
          consumesKey: false,
        ),
        ExtendSelectionByPageIntent: DoNothingAction(consumesKey: false),
        ExpandSelectionToDocumentBoundaryIntent: DoNothingAction(
          consumesKey: false,
        ),
        ExpandSelectionToLineBreakIntent: DoNothingAction(consumesKey: false),
        ScrollToDocumentBoundaryIntent: DoNothingAction(consumesKey: false),
        RedoTextIntent: DoNothingAction(consumesKey: false),
        ReplaceTextIntent: DoNothingAction(consumesKey: false),
        UndoTextIntent: DoNothingAction(consumesKey: false),
        UpdateSelectionIntent: DoNothingAction(consumesKey: false),
        TransposeCharactersIntent: DoNothingAction(consumesKey: false),
      };

  /// Keyboard text editing actions.
  // The Handling of the default text editing shortcuts with deltas
  // needs to be in the framework somehow. This should go through some kind of
  // generic "replace" method like in EditableText.
  // EditableText converts intents like DeleteCharacterIntent to a generic
  // ReplaceTextIntent. I wonder if that could be done at a higher level, so
  // that users could listen to that instead of DeleteCharacterIntent?
  TextSelection get _selection => _value.selection;
  late final Map<Type, Action<Intent>> _actions = <Type, Action<Intent>>{
    DeleteCharacterIntent: CallbackAction<DeleteCharacterIntent>(
      onInvoke: (intent) => _delete(intent.forward),
    ),
    ExtendSelectionByCharacterIntent:
        CallbackAction<ExtendSelectionByCharacterIntent>(
          onInvoke:
              (intent) =>
                  _extendSelection(intent.forward, intent.collapseSelection),
        ),
    SelectAllTextIntent: CallbackAction<SelectAllTextIntent>(
      onInvoke: (intent) => selectAll(intent.cause),
    ),
    CopySelectionTextIntent: CallbackAction<CopySelectionTextIntent>(
      onInvoke: (intent) => copySelection(intent.cause),
    ),
    PasteTextIntent: CallbackAction<PasteTextIntent>(
      onInvoke: (intent) => pasteText(intent.cause),
    ),
    DoNothingAndStopPropagationTextIntent: DoNothingAction(consumesKey: false),
    ..._unsupportedActions,
  };

  void _delete(bool forward) {
    if (_value.text.isEmpty) return;

    late final TextRange deletedRange;
    late final TextRange newComposing;
    late final String deletedText;
    final int offset = _selection.baseOffset;

    if (_selection.isCollapsed) {
      if (forward) {
        if (_selection.baseOffset == _value.text.length) return;
        deletedText = _value.text.substring(offset).characters.first;
        deletedRange = TextRange(
          start: offset,
          end: offset + deletedText.length,
        );
      } else {
        if (_selection.baseOffset == 0) return;
        deletedText = _value.text.substring(0, offset).characters.last;
        deletedRange = TextRange(
          start: offset - deletedText.length,
          end: offset,
        );
      }
    } else {
      deletedRange = _selection;
    }

    final bool isComposing =
        _selection.isCollapsed && _value.isComposingRangeValid;

    if (isComposing) {
      newComposing = TextRange.collapsed(deletedRange.start);
    } else {
      newComposing = TextRange.empty;
    }

    _userUpdateTextEditingValueWithDelta(
      TextEditingDeltaDeletion(
        oldText: _value.text,
        selection: TextSelection.collapsed(offset: deletedRange.start),
        composing: newComposing,
        deletedRange: deletedRange,
      ),
      SelectionChangedCause.keyboard,
    );
  }

  void _extendSelection(bool forward, bool collapseSelection) {
    late final TextSelection selection;

    if (collapseSelection) {
      if (!_selection.isCollapsed) {
        final int firstOffset =
            _selection.isNormalized ? _selection.start : _selection.end;
        final int lastOffset =
            _selection.isNormalized ? _selection.end : _selection.start;
        selection = TextSelection.collapsed(
          offset: forward ? lastOffset : firstOffset,
        );
      } else {
        if (forward && _selection.baseOffset == _value.text.length) return;
        if (!forward && _selection.baseOffset == 0) return;
        final int adjustment =
            forward
                ? _value.text
                    .substring(_selection.baseOffset)
                    .characters
                    .first
                    .length
                : -_value.text
                    .substring(0, _selection.baseOffset)
                    .characters
                    .last
                    .length;
        selection = TextSelection.collapsed(
          offset: _selection.baseOffset + adjustment,
        );
      }
    } else {
      if (forward && _selection.extentOffset == _value.text.length) return;
      if (!forward && _selection.extentOffset == 0) return;
      final int adjustment =
          forward
              ? _value.text
                  .substring(_selection.baseOffset)
                  .characters
                  .first
                  .length
              : -_value.text
                  .substring(0, _selection.baseOffset)
                  .characters
                  .last
                  .length;
      selection = TextSelection(
        baseOffset: _selection.baseOffset,
        extentOffset: _selection.extentOffset + adjustment,
      );
    }

    _userUpdateTextEditingValueWithDelta(
      TextEditingDeltaNonTextUpdate(
        oldText: _value.text,
        selection: selection,
        composing: _value.composing,
      ),
      SelectionChangedCause.keyboard,
    );
  }

  void _userUpdateTextEditingValueWithDelta(
    TextEditingDelta textEditingDelta,
    SelectionChangedCause cause,
  ) {
    TextEditingValue value = _value;

    value = textEditingDelta.apply(value);

    if (widget.controller is ReplacementTextEditingController) {
      (widget.controller as ReplacementTextEditingController)
          .syncReplacementRanges(textEditingDelta);
    }

    if (value != _value) {
      manager.updateTextEditingDeltaHistory([textEditingDelta]);
    }

    userUpdateTextEditingValue(value, cause);
  }

  /// For updates to text editing value.
  void _didChangeTextEditingValue() {
    _updateRemoteTextEditingValueIfNeeded();
    _updateOrDisposeOfSelectionOverlayIfNeeded();
    setState(() {});
  }

  // Only update the platform's text input plugin's text editing value when it has changed
  // to avoid sending duplicate update messages to the engine.
  void _updateRemoteTextEditingValueIfNeeded() {
    if (_lastKnownRemoteTextEditingValue == _value) return;

    if (_textInputConnection != null) {
      _textInputConnection!.setEditingState(_value);
      _lastKnownRemoteTextEditingValue = _value;
    }
  }

  /// For correctly positioning the candidate menu on macOS.
  // Sends the current composing rect to the iOS text input plugin via the text
  // input channel. We need to keep sending the information even if no text is
  // currently marked, as the information usually lags behind. The text input
  // plugin needs to estimate the composing rect based on the latest caret rect,
  // when the composing rect info didn't arrive in time.
  void _updateComposingRectIfNeeded() {
    final TextRange composingRange = _value.composing;
    assert(mounted);
    Rect? composingRect = renderEditable.getRectForComposingRange(
      composingRange,
    );
    // Send the caret location instead if there's no marked text yet.
    if (composingRect == null) {
      assert(!composingRange.isValid || composingRange.isCollapsed);
      final int offset = composingRange.isValid ? composingRange.start : 0;
      composingRect = renderEditable.getLocalRectForCaret(
        TextPosition(offset: offset),
      );
    }
    _textInputConnection!.setComposingRect(composingRect);
  }

  void _updateCaretRectIfNeeded() {
    final TextSelection? selection = renderEditable.selection;
    if (selection == null || !selection.isValid || !selection.isCollapsed) {
      return;
    }
    final TextPosition currentTextPosition = TextPosition(
      offset: selection.baseOffset,
    );
    final Rect caretRect = renderEditable.getLocalRectForCaret(
      currentTextPosition,
    );
    _textInputConnection!.setCaretRect(caretRect);
  }

  void _updateSizeAndTransform() {
    final Size size = renderEditable.size;
    final Matrix4 transform = renderEditable.getTransformTo(null);
    _textInputConnection!.setEditableSizeAndTransform(size, transform);
  }

  void _schedulePeriodicPostFrameCallbacks([Duration? duration]) {
    if (!_hasInputConnection) {
      return;
    }
    _updateComposingRectIfNeeded();
    _updateCaretRectIfNeeded();
    SchedulerBinding.instance.addPostFrameCallback(
      _schedulePeriodicPostFrameCallbacks,
    );
  }

  /// [TextSelectionDelegate] method implementations.
  @override
  void bringIntoView(TextPosition position) {
    // Not implemented.
  }

  @override
  bool get cutEnabled => !textEditingValue.selection.isCollapsed;

  @override
  bool get copyEnabled => !textEditingValue.selection.isCollapsed;

  @override
  bool get pasteEnabled =>
      _clipboardStatus == null ||
      _clipboardStatus.value == ClipboardStatus.pasteable;

  @override
  bool get selectAllEnabled => textEditingValue.text.isNotEmpty;

  @override
  void copySelection(SelectionChangedCause cause) {
    final TextSelection copyRange = textEditingValue.selection;
    if (!copyRange.isValid || copyRange.isCollapsed) return;
    final String text = textEditingValue.text;
    Clipboard.setData(ClipboardData(text: copyRange.textInside(text)));

    // If copy was done by the text selection toolbar we should hide the toolbar and set the selection
    // to the end of the copied text.
    if (cause == SelectionChangedCause.toolbar) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          break;
        case TargetPlatform.macOS:
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          _userUpdateTextEditingValueWithDelta(
            TextEditingDeltaNonTextUpdate(
              oldText: textEditingValue.text,
              selection: TextSelection.collapsed(
                offset: textEditingValue.selection.end,
              ),
              composing: TextRange.empty,
            ),
            cause,
          );
      }
      hideToolbar();
    }
    _clipboardStatus?.update();
  }

  @override
  void cutSelection(SelectionChangedCause cause) {
    final TextSelection cutRange = textEditingValue.selection;
    final String text = textEditingValue.text;

    if (cutRange.isCollapsed) return;
    Clipboard.setData(ClipboardData(text: cutRange.textInside(text)));
    final int lastSelectionIndex = math.min(
      cutRange.baseOffset,
      cutRange.extentOffset,
    );
    _userUpdateTextEditingValueWithDelta(
      TextEditingDeltaReplacement(
        oldText: textEditingValue.text,
        replacementText: '',
        replacedRange: cutRange,
        selection: TextSelection.collapsed(offset: lastSelectionIndex),
        composing: TextRange.empty,
      ),
      cause,
    );
    if (cause == SelectionChangedCause.toolbar) hideToolbar();
    _clipboardStatus?.update();
  }

  @override
  Future<void> pasteText(SelectionChangedCause cause) async {
    final TextSelection pasteRange = textEditingValue.selection;
    if (!pasteRange.isValid) return;

    final ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data == null) return;

    // After the paste, the cursor should be collapsed and located after the
    // pasted content.
    final int lastSelectionIndex = math.max(
      pasteRange.baseOffset,
      pasteRange.baseOffset + data.text!.length,
    );

    _userUpdateTextEditingValueWithDelta(
      TextEditingDeltaReplacement(
        oldText: textEditingValue.text,
        replacementText: data.text!,
        replacedRange: pasteRange,
        selection: TextSelection.collapsed(offset: lastSelectionIndex),
        composing: TextRange.empty,
      ),
      cause,
    );

    if (cause == SelectionChangedCause.toolbar) hideToolbar();
  }

  @override
  void selectAll(SelectionChangedCause cause) {
    final TextSelection newSelection = _value.selection.copyWith(
      baseOffset: 0,
      extentOffset: _value.text.length,
    );
    _userUpdateTextEditingValueWithDelta(
      TextEditingDeltaNonTextUpdate(
        oldText: textEditingValue.text,
        selection: newSelection,
        composing: TextRange.empty,
      ),
      cause,
    );
    if (cause == SelectionChangedCause.toolbar) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
        case TargetPlatform.iOS:
        case TargetPlatform.fuchsia:
          break;
        case TargetPlatform.macOS:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          hideToolbar();
      }
    }
  }

  @override
  TextEditingValue get textEditingValue => _value;

  @override
  void userUpdateTextEditingValue(
    TextEditingValue value,
    SelectionChangedCause cause,
  ) {
    if (value == _value) return;

    final bool selectionChanged = _value.selection != value.selection;

    if (cause == SelectionChangedCause.drag ||
        cause == SelectionChangedCause.longPress ||
        cause == SelectionChangedCause.tap) {
      // Here the change is coming from gestures which call on RenderEditable to change the selection.
      // Create a TextEditingDeltaNonTextUpdate so we can keep track of the delta history. RenderEditable
      // does not report a delta on selection change.
      final bool textChanged = _value.text != value.text;
      if (selectionChanged && !textChanged) {
        final TextEditingDeltaNonTextUpdate selectionUpdate =
            TextEditingDeltaNonTextUpdate(
              oldText: value.text,
              selection: value.selection,
              composing: value.composing,
            );
        if (widget.controller is ReplacementTextEditingController) {
          (widget.controller as ReplacementTextEditingController)
              .syncReplacementRanges(selectionUpdate);
        }
        manager.updateTextEditingDeltaHistory([selectionUpdate]);
      }
    }

    final bool selectionRangeChanged =
        _value.selection.start != value.selection.start ||
        _value.selection.end != value.selection.end;

    _value = value;

    if (selectionChanged) {
      _handleSelectionChanged(_value.selection, cause);

      if (selectionRangeChanged) {
        manager.updateToggleButtonsStateOnSelectionChanged(
          _value.selection,
          widget.controller as ReplacementTextEditingController,
        );
      }
    }
  }

  @override
  void hideToolbar([bool hideHandles = true]) {
    if (hideHandles) {
      // Hide the handles and the toolbar.
      _selectionOverlay?.hide();
    } else if (_selectionOverlay?.toolbarIsVisible ?? false) {
      // Hide only the toolbar but not the handles.
      _selectionOverlay?.hideToolbar();
    }
  }

  /// For TextSelection.
  final LayerLink _startHandleLayerLink = LayerLink();
  final LayerLink _endHandleLayerLink = LayerLink();
  final LayerLink _toolbarLayerLink = LayerLink();

  TextSelectionOverlay? _selectionOverlay;
  RenderEditable get renderEditable =>
      _textKey.currentContext!.findRenderObject()! as RenderEditable;

  void _handleSelectionChanged(
    TextSelection selection,
    SelectionChangedCause? cause,
  ) {
    // We return early if the selection is not valid. This can happen when the
    // text of the editable is updated at the same time as the selection is
    // changed by a gesture event.
    final textLength = _value.text.length;
    if (selection.start > textLength || selection.end > textLength) return;

    widget.controller.selection = selection;

    // This will show the keyboard for all selection changes on the
    // editable except for those triggered by a keyboard input.
    // Typically BasicTextInputClient shouldn't take user keyboard input if
    // it's not focused already.
    switch (cause) {
      case null:
      case SelectionChangedCause.doubleTap:
      case SelectionChangedCause.drag:
      case SelectionChangedCause.forcePress:
      case SelectionChangedCause.longPress:
      case SelectionChangedCause.scribble:
      case SelectionChangedCause.tap:
      case SelectionChangedCause.toolbar:
        requestKeyboard();
      case SelectionChangedCause.keyboard:
        if (_hasFocus) {
          requestKeyboard();
        }
    }
    if (widget.selectionControls == null && widget.contextMenuBuilder == null) {
      _selectionOverlay?.dispose();
      _selectionOverlay = null;
    } else {
      if (_selectionOverlay == null) {
        _selectionOverlay = _createSelectionOverlay();
      } else {
        _selectionOverlay!.update(_value);
      }
      _selectionOverlay!.handlesVisible = widget.showSelectionHandles;
      _selectionOverlay!.showHandles();
    }

    try {
      widget.onSelectionChanged.call(selection, cause);
    } catch (exception, stack) {
      FlutterError.reportError(
        FlutterErrorDetails(
          exception: exception,
          stack: stack,
          library: 'widgets',
          context: ErrorDescription(
            'while calling onSelectionChanged for $cause',
          ),
        ),
      );
    }
  }

  TextSelectionOverlay _createSelectionOverlay() {
    final TextSelectionOverlay selectionOverlay = TextSelectionOverlay(
      clipboardStatus: _clipboardStatus,
      context: context,
      value: _value,
      debugRequiredFor: widget,
      toolbarLayerLink: _toolbarLayerLink,
      startHandleLayerLink: _startHandleLayerLink,
      endHandleLayerLink: _endHandleLayerLink,
      renderObject: renderEditable,
      selectionControls: widget.selectionControls,
      selectionDelegate: this,
      dragStartBehavior: DragStartBehavior.start,
      onSelectionHandleTapped: () {
        _toggleToolbar();
      },
      contextMenuBuilder:
          widget.contextMenuBuilder == null || kIsWeb
              ? null
              : (context) {
                return widget.contextMenuBuilder!(
                  context,
                  _clipboardStatus!.value,
                  copyEnabled
                      ? () => copySelection(SelectionChangedCause.toolbar)
                      : null,
                  cutEnabled
                      ? () => cutSelection(SelectionChangedCause.toolbar)
                      : null,
                  pasteEnabled
                      ? () => pasteText(SelectionChangedCause.toolbar)
                      : null,
                  selectAllEnabled
                      ? () => selectAll(SelectionChangedCause.toolbar)
                      : null,
                  lookUpEnabled
                      ? () => _lookUpSelection(SelectionChangedCause.toolbar)
                      : null,
                  liveTextInputEnabled
                      ? () => _startLiveTextInput(SelectionChangedCause.toolbar)
                      : null,
                  searchWebEnabled
                      ? () =>
                          _searchWebForSelection(SelectionChangedCause.toolbar)
                      : null,
                  shareEnabled
                      ? () => _shareSelection(SelectionChangedCause.toolbar)
                      : null,
                  _contextMenuAnchors,
                );
              },
      magnifierConfiguration: TextMagnifierConfiguration.disabled,
    );

    return selectionOverlay;
  }

  void _toggleToolbar() {
    final TextSelectionOverlay selectionOverlay =
        _selectionOverlay ??= _createSelectionOverlay();

    if (selectionOverlay.toolbarIsVisible) {
      hideToolbar(false);
    } else {
      showToolbar();
    }
  }

  // When the framework's text editing value changes we should update the text editing
  // value contained within the selection overlay or we might observe unexpected behavior.
  void _updateOrDisposeOfSelectionOverlayIfNeeded() {
    if (_selectionOverlay != null) {
      if (_hasFocus) {
        _selectionOverlay!.update(_value);
      } else {
        _selectionOverlay!.dispose();
        _selectionOverlay = null;
      }
    }
  }

  /// Gets the line heights at the start and end of the selection for the given
  /// editable.
  _GlyphHeights _getGlyphHeights() {
    final TextSelection selection = textEditingValue.selection;

    // Only calculate handle rects if the text in the previous frame
    // is the same as the text in the current frame. This is done because
    // widget.renderObject contains the renderEditable from the previous frame.
    // If the text changed between the current and previous frames then
    // widget.renderObject.getRectForComposingRange might fail. In cases where
    // the current frame is different from the previous we fall back to
    // renderObject.preferredLineHeight.
    final InlineSpan span = renderEditable.text!;
    final String prevText = span.toPlainText();
    final String currText = textEditingValue.text;
    if (prevText != currText || !selection.isValid || selection.isCollapsed) {
      return _GlyphHeights(
        start: renderEditable.preferredLineHeight,
        end: renderEditable.preferredLineHeight,
      );
    }

    final String selectedGraphemes = selection.textInside(currText);
    final int firstSelectedGraphemeExtent =
        selectedGraphemes.characters.first.length;
    final Rect? startCharacterRect = renderEditable.getRectForComposingRange(
      TextRange(
        start: selection.start,
        end: selection.start + firstSelectedGraphemeExtent,
      ),
    );
    final int lastSelectedGraphemeExtent =
        selectedGraphemes.characters.last.length;
    final Rect? endCharacterRect = renderEditable.getRectForComposingRange(
      TextRange(
        start: selection.end - lastSelectedGraphemeExtent,
        end: selection.end,
      ),
    );
    return _GlyphHeights(
      start: startCharacterRect?.height ?? renderEditable.preferredLineHeight,
      end: endCharacterRect?.height ?? renderEditable.preferredLineHeight,
    );
  }

  /// Returns the anchor points for the default context menu.
  TextSelectionToolbarAnchors get _contextMenuAnchors {
    if (renderEditable.lastSecondaryTapDownPosition != null) {
      return TextSelectionToolbarAnchors(
        primaryAnchor: renderEditable.lastSecondaryTapDownPosition!,
      );
    }

    final _GlyphHeights glyphHeights = _getGlyphHeights();
    final TextSelection selection = textEditingValue.selection;
    final List<TextSelectionPoint> points = renderEditable
        .getEndpointsForSelection(selection);
    return TextSelectionToolbarAnchors.fromSelection(
      renderBox: renderEditable,
      startGlyphHeight: glyphHeights.start,
      endGlyphHeight: glyphHeights.end,
      selectionEndpoints: points,
    );
  }

  /// For OCR Support.
  /// Detects whether the Live Text input is enabled.
  final LiveTextInputStatusNotifier? _liveTextInputStatus =
      kIsWeb ? null : LiveTextInputStatusNotifier();

  @override
  bool get liveTextInputEnabled {
    return _liveTextInputStatus?.value == LiveTextInputStatus.enabled &&
        textEditingValue.selection.isCollapsed;
  }

  void _onChangedLiveTextInputStatus() {
    setState(() {
      // Inform the widget that the value of liveTextInputStatus has changed.
    });
  }

  void _startLiveTextInput(SelectionChangedCause cause) {
    if (!liveTextInputEnabled) {
      return;
    }
    if (_hasInputConnection) {
      LiveText.startLiveTextInput();
    }
    if (cause == SelectionChangedCause.toolbar) {
      hideToolbar();
    }
  }

  /// For lookup support.
  @override
  bool get lookUpEnabled {
    if (defaultTargetPlatform != TargetPlatform.iOS) {
      return false;
    }
    return !textEditingValue.selection.isCollapsed;
  }

  /// Look up the current selection, as in the "Look Up" edit menu button on iOS.
  /// Currently this is only implemented for iOS.
  /// Throws an error if the selection is empty or collapsed.
  Future<void> _lookUpSelection(SelectionChangedCause cause) async {
    final String text = textEditingValue.selection.textInside(
      textEditingValue.text,
    );
    if (text.isEmpty) {
      return;
    }
    await SystemChannels.platform.invokeMethod('LookUp.invoke', text);
  }

  @override
  bool get searchWebEnabled {
    if (defaultTargetPlatform != TargetPlatform.iOS) {
      return false;
    }

    return !textEditingValue.selection.isCollapsed &&
        textEditingValue.selection.textInside(textEditingValue.text).trim() !=
            '';
  }

  /// Launch a web search on the current selection,
  /// as in the "Search Web" edit menu button on iOS.
  ///
  /// Currently this is only implemented for iOS.
  Future<void> _searchWebForSelection(SelectionChangedCause cause) async {
    final String text = textEditingValue.selection.textInside(
      textEditingValue.text,
    );
    if (text.isNotEmpty) {
      await SystemChannels.platform.invokeMethod('SearchWeb.invoke', text);
    }
  }

  @override
  bool get shareEnabled {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
        return !textEditingValue.selection.isCollapsed &&
            textEditingValue.selection
                    .textInside(textEditingValue.text)
                    .trim() !=
                '';
      case TargetPlatform.macOS:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return false;
    }
  }

  /// Launch the share interface for the current selection,
  /// as in the "Share..." edit menu button on iOS.
  ///
  /// Currently this is only implemented for iOS and Android.
  Future<void> _shareSelection(SelectionChangedCause cause) async {
    final String text = textEditingValue.selection.textInside(
      textEditingValue.text,
    );
    if (text.isNotEmpty) {
      await SystemChannels.platform.invokeMethod('Share.invoke', text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Actions(
      actions: _actions,
      child: Focus(
        focusNode: widget.focusNode,
        child: Scrollable(
          viewportBuilder: (context, position) {
            return CompositedTransformTarget(
              link: _toolbarLayerLink,
              child: _Editable(
                key: _textKey,
                startHandleLayerLink: _startHandleLayerLink,
                endHandleLayerLink: _endHandleLayerLink,
                inlineSpan: _buildTextSpan(),
                value: _value, // We pass value.selection to RenderEditable.
                cursorColor: Colors.blue,
                backgroundCursorColor: Colors.grey[100],
                showCursor: ValueNotifier<bool>(_hasFocus),
                forceLine:
                    true, // Whether text field will take full line regardless of width.
                readOnly: false, // editable text-field.
                hasFocus: _hasFocus,
                maxLines: null, // multi-line text-field.
                minLines: null,
                expands: false, // expands to height of parent.
                strutStyle: null,
                selectionColor: Colors.blue.withAlpha(102),
                textScaler: MediaQuery.textScalerOf(context),
                textAlign: TextAlign.left,
                textDirection: _textDirection,
                locale: Localizations.maybeLocaleOf(context),
                textHeightBehavior: DefaultTextHeightBehavior.maybeOf(context),
                textWidthBasis: TextWidthBasis.parent,
                obscuringCharacter: '•',
                obscureText:
                    false, // This is a non-private text field that does not require obfuscation.
                offset: position,
                rendererIgnoresPointer: true,
                cursorWidth: 2.0,
                cursorHeight: null,
                cursorRadius: const Radius.circular(2.0),
                cursorOffset: Offset.zero,
                paintCursorAboveText: false,
                enableInteractiveSelection:
                    true, // make true to enable selection on mobile.
                textSelectionDelegate: this,
                devicePixelRatio: MediaQuery.of(context).devicePixelRatio,
                promptRectRange: null,
                promptRectColor: null,
                clipBehavior: Clip.hardEdge,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Editable extends MultiChildRenderObjectWidget {
  _Editable({
    super.key,
    required this.inlineSpan,
    required this.value,
    required this.startHandleLayerLink,
    required this.endHandleLayerLink,
    this.cursorColor,
    this.backgroundCursorColor,
    required this.showCursor,
    required this.forceLine,
    required this.readOnly,
    this.textHeightBehavior,
    required this.textWidthBasis,
    required this.hasFocus,
    required this.maxLines,
    this.minLines,
    required this.expands,
    this.strutStyle,
    this.selectionColor,
    required this.textScaler,
    required this.textAlign,
    required this.textDirection,
    this.locale,
    required this.obscuringCharacter,
    required this.obscureText,
    required this.offset,
    this.rendererIgnoresPointer = false,
    required this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    required this.cursorOffset,
    required this.paintCursorAboveText,
    this.enableInteractiveSelection = true,
    required this.textSelectionDelegate,
    required this.devicePixelRatio,
    this.promptRectRange,
    this.promptRectColor,
    required this.clipBehavior,
  }) : super(children: _extractChildren(inlineSpan));

  // Traverses the InlineSpan tree and depth-first collects the list of
  // child widgets that are created in WidgetSpans.
  static List<Widget> _extractChildren(InlineSpan span) {
    final List<Widget> result = <Widget>[];
    span.visitChildren((span) {
      if (span is WidgetSpan) {
        result.add(span.child);
      }
      return true;
    });
    return result;
  }

  final InlineSpan inlineSpan;
  final TextEditingValue value;
  final Color? cursorColor;
  final LayerLink startHandleLayerLink;
  final LayerLink endHandleLayerLink;
  final Color? backgroundCursorColor;
  final ValueNotifier<bool> showCursor;
  final bool forceLine;
  final bool readOnly;
  final bool hasFocus;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final StrutStyle? strutStyle;
  final Color? selectionColor;
  final TextScaler textScaler;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale? locale;
  final String obscuringCharacter;
  final bool obscureText;
  final TextHeightBehavior? textHeightBehavior;
  final TextWidthBasis textWidthBasis;
  final ViewportOffset offset;
  final bool rendererIgnoresPointer;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Offset cursorOffset;
  final bool paintCursorAboveText;
  final bool enableInteractiveSelection;
  final TextSelectionDelegate textSelectionDelegate;
  final double devicePixelRatio;
  final TextRange? promptRectRange;
  final Color? promptRectColor;
  final Clip clipBehavior;

  @override
  RenderEditable createRenderObject(BuildContext context) {
    return RenderEditable(
      text: inlineSpan,
      cursorColor: cursorColor,
      startHandleLayerLink: startHandleLayerLink,
      endHandleLayerLink: endHandleLayerLink,
      backgroundCursorColor: backgroundCursorColor,
      showCursor: showCursor,
      forceLine: forceLine,
      readOnly: readOnly,
      hasFocus: hasFocus,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      strutStyle: strutStyle,
      selectionColor: selectionColor,
      textScaler: textScaler,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale ?? Localizations.maybeLocaleOf(context),
      selection: value.selection,
      offset: offset,
      ignorePointer: rendererIgnoresPointer,
      obscuringCharacter: obscuringCharacter,
      obscureText: obscureText,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorOffset: cursorOffset,
      paintCursorAboveText: paintCursorAboveText,
      enableInteractiveSelection: enableInteractiveSelection,
      textSelectionDelegate: textSelectionDelegate,
      devicePixelRatio: devicePixelRatio,
      promptRectRange: promptRectRange,
      promptRectColor: promptRectColor,
      clipBehavior: clipBehavior,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderEditable renderObject) {
    renderObject
      ..text = inlineSpan
      ..cursorColor = cursorColor
      ..startHandleLayerLink = startHandleLayerLink
      ..endHandleLayerLink = endHandleLayerLink
      ..showCursor = showCursor
      ..forceLine = forceLine
      ..readOnly = readOnly
      ..hasFocus = hasFocus
      ..maxLines = maxLines
      ..minLines = minLines
      ..expands = expands
      ..strutStyle = strutStyle
      ..selectionColor = selectionColor
      ..textScaler = textScaler
      ..textAlign = textAlign
      ..textDirection = textDirection
      ..locale = locale ?? Localizations.maybeLocaleOf(context)
      ..selection = value.selection
      ..offset = offset
      ..ignorePointer = rendererIgnoresPointer
      ..textHeightBehavior = textHeightBehavior
      ..textWidthBasis = textWidthBasis
      ..obscuringCharacter = obscuringCharacter
      ..obscureText = obscureText
      ..cursorWidth = cursorWidth
      ..cursorHeight = cursorHeight
      ..cursorRadius = cursorRadius
      ..cursorOffset = cursorOffset
      ..enableInteractiveSelection = enableInteractiveSelection
      ..textSelectionDelegate = textSelectionDelegate
      ..devicePixelRatio = devicePixelRatio
      ..paintCursorAboveText = paintCursorAboveText
      ..promptRectColor = promptRectColor
      ..clipBehavior = clipBehavior
      ..setPromptRectRange(promptRectRange);
  }
}

/// The start and end glyph heights of some range of text.
@immutable
class _GlyphHeights {
  const _GlyphHeights({required this.start, required this.end});

  /// The glyph height of the first line.
  final double start;

  /// The glyph height of the last line.
  final double end;
}
