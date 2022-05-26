import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'replacements.dart';
import 'text_editing_delta_history_manager.dart';
import 'toggle_buttons_state_manager.dart';

/// Signature for the callback that reports when the user changes the selection
/// (including the cursor location).
typedef SelectionChangedCallback = void Function(
    TextSelection selection, SelectionChangedCause? cause);

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
    required this.onSelectionChanged,
    required this.showSelectionHandles,
  });

  final TextEditingController controller;
  final TextStyle style;
  final FocusNode focusNode;
  final TextSelectionControls? selectionControls;
  final bool showSelectionHandles;
  final SelectionChangedCallback onSelectionChanged;

  @override
  State<BasicTextInputClient> createState() => BasicTextInputClientState();
}

class BasicTextInputClientState extends State<BasicTextInputClient>
    with TextSelectionDelegate
    implements DeltaTextInputClient {
  final GlobalKey _textKey = GlobalKey();
  late final ToggleButtonsStateManager toggleButtonStateManager;
  late final TextEditingDeltaHistoryManager textEditingDeltaHistoryManager;
  final ClipboardStatusNotifier? _clipboardStatus =
      kIsWeb ? null : ClipboardStatusNotifier();

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_handleFocusChanged);
    widget.controller.addListener(_didChangeTextEditingValue);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    toggleButtonStateManager = ToggleButtonsStateManager.of(context);
    textEditingDeltaHistoryManager = TextEditingDeltaHistoryManager.of(context);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_didChangeTextEditingValue);
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

    _selectionOverlay!.showToolbar();

    return true;
  }

  @override
  void updateEditingValue(TextEditingValue value) {/* Not using */}

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
    textEditingDeltaHistoryManager
        .updateTextEditingDeltaHistoryOnInput(textEditingDeltas);

    _value = value;

    if (widget.controller is ReplacementTextEditingController) {
      for (final TextEditingDelta delta in textEditingDeltas) {
        (widget.controller as ReplacementTextEditingController)
            .syncReplacementRanges(delta);
      }
    }

    if (selectionChanged) {
      toggleButtonStateManager.updateToggleButtonsOnSelection(value.selection);
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
        final TextSelection validSelection =
            TextSelection.collapsed(offset: _value.text.length);
        _handleSelectionChanged(validSelection, null);
        toggleButtonStateManager.updateToggleButtonsOnSelection(validSelection);
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

  void _userUpdateTextEditingValueWithDelta(
      TextEditingDelta textEditingDelta, SelectionChangedCause cause) {
    TextEditingValue value = _value;

    value = textEditingDelta.apply(value);

    if (widget.controller is ReplacementTextEditingController) {
      (widget.controller as ReplacementTextEditingController)
          .syncReplacementRanges(textEditingDelta);
    }

    if (value != _value) {
      textEditingDeltaHistoryManager
          .updateTextEditingDeltaHistoryOnInput([textEditingDelta]);
    }

    userUpdateTextEditingValue(value, cause);
  }

  /// Keyboard text editing actions.
  // The Handling of the default text editing shortcuts with deltas
  // needs to be in the framework somehow.  This should go through some kind of
  // generic "replace" method like in EditableText.
  // EditableText converts intents like DeleteCharacterIntent to a generic
  // ReplaceTextIntent. I wonder if that could be done at a higher level, so
  // that users could listen to that instead of DeleteCharacterIntent?
  TextSelection get _selection => _value.selection;
  late final Map<Type, Action<Intent>> _actions = <Type, Action<Intent>>{
    DeleteCharacterIntent: CallbackAction<DeleteCharacterIntent>(
      onInvoke: (intent) => _delete(),
    ),
    ExtendSelectionByCharacterIntent:
        CallbackAction<ExtendSelectionByCharacterIntent>(
      onInvoke: (intent) =>
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
  };

  void _delete() {
    if (_value.text.isEmpty) return;

    late final TextRange deletedRange;
    late final TextRange newComposing;
    final int deletedLength =
        _value.text.substring(0, _selection.baseOffset).characters.last.length;

    if (_selection.isCollapsed) {
      if (_selection.baseOffset == 0) return;
      deletedRange = TextRange(
        start: _selection.baseOffset - deletedLength,
        end: _selection.baseOffset,
      );
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
        selection =
            TextSelection.collapsed(offset: forward ? lastOffset : firstOffset);
      } else {
        if (forward && _selection.baseOffset == _value.text.length) return;
        if (!forward && _selection.baseOffset == 0) return;
        final int adjustment = forward
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
      final int adjustment = forward
          ? _value.text.substring(_selection.baseOffset).characters.first.length
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

  /// For updates to text editing value.
  void _didChangeTextEditingValue() {
    _updateRemoteTextEditingValueIfNeeded();
    _updateOrDisposeOfSelectionOverlayIfNeeded();
    setState(() {});
  }

  void _toggleToolbar() {
    assert(_selectionOverlay != null);
    if (_selectionOverlay!.toolbarIsVisible) {
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

  // Only update the platform's text input plugin's text editing value when it has changed
  // to avoid sending duplicate update messages to the engine.
  void _updateRemoteTextEditingValueIfNeeded() {
    if (_lastKnownRemoteTextEditingValue == _value) return;

    if (_textInputConnection != null) {
      _textInputConnection!.setEditingState(_value);
      _lastKnownRemoteTextEditingValue = _value;
    }
  }

  /// [TextSelectionDelegate] method implementations.
  @override
  void bringIntoView(TextPosition position) {
    // Not implemented.
  }

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
                  offset: textEditingValue.selection.end),
              composing: TextRange.empty,
            ),
            cause,
          );
          break;
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
    final int lastSelectionIndex =
        math.min(cutRange.baseOffset, cutRange.extentOffset);
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
  void hideToolbar([bool hideHandles = true]) {
    if (hideHandles) {
      // Hide the handles and the toolbar.
      _selectionOverlay?.hide();
    } else if (_selectionOverlay?.toolbarIsVisible ?? false) {
      // Hide only the toolbar but not the handles.
      _selectionOverlay?.hideToolbar();
    }
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
        pasteRange.baseOffset, pasteRange.baseOffset + data.text!.length);

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
    final TextSelection newSelection = _value.selection
        .copyWith(baseOffset: 0, extentOffset: _value.text.length);
    _userUpdateTextEditingValueWithDelta(
      TextEditingDeltaNonTextUpdate(
        oldText: textEditingValue.text,
        selection: newSelection,
        composing: TextRange.empty,
      ),
      cause,
    );
  }

  @override
  TextEditingValue get textEditingValue => _value;

  @override
  void userUpdateTextEditingValue(
      TextEditingValue value, SelectionChangedCause cause) {
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
        textEditingDeltaHistoryManager
            .updateTextEditingDeltaHistoryOnInput([selectionUpdate]);
      }
    }

    final bool selectionRangeChanged =
        _value.selection.start != value.selection.start ||
            _value.selection.end != value.selection.end;

    _value = value;

    if (selectionChanged) {
      _handleSelectionChanged(_value.selection, cause);

      if (selectionRangeChanged) {
        toggleButtonStateManager
            .updateToggleButtonsOnSelection(_value.selection);
      }
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
      TextSelection selection, SelectionChangedCause? cause) {
    // We return early if the selection is not valid. This can happen when the
    // text of [EditableText] is updated at the same time as the selection is
    // changed by a gesture event.
    if (!widget.controller.isSelectionWithinTextBounds(selection)) return;

    widget.controller.selection = selection;

    // This will show the keyboard for all selection changes on the
    // EditableText except for those triggered by a keyboard input.
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
        break;
      case SelectionChangedCause.keyboard:
        if (_hasFocus) {
          requestKeyboard();
        }
        break;
    }
    if (widget.selectionControls == null) {
      _selectionOverlay?.dispose();
      _selectionOverlay = null;
    } else {
      if (_selectionOverlay == null) {
        _selectionOverlay = TextSelectionOverlay(
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
        );
      } else {
        _selectionOverlay!.update(_value);
      }
      _selectionOverlay!.handlesVisible = widget.showSelectionHandles;
      _selectionOverlay!.showHandles();
    }

    try {
      widget.onSelectionChanged.call(selection, cause);
    } catch (exception, stack) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: 'widgets',
        context:
            ErrorDescription('while calling onSelectionChanged for $cause'),
      ));
    }
  }

  static final Map<ShortcutActivator, Intent> _defaultWebShortcuts =
      <ShortcutActivator, Intent>{
    // Activation
    const SingleActivator(LogicalKeyboardKey.space):
        DoNothingAndStopPropagationIntent(),

    // Scrolling
    const SingleActivator(LogicalKeyboardKey.arrowUp):
        DoNothingAndStopPropagationIntent(),
    const SingleActivator(LogicalKeyboardKey.arrowDown):
        DoNothingAndStopPropagationIntent(),
    const SingleActivator(LogicalKeyboardKey.arrowLeft):
        DoNothingAndStopPropagationIntent(),
    const SingleActivator(LogicalKeyboardKey.arrowRight):
        DoNothingAndStopPropagationIntent(),
  };

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: kIsWeb ? _defaultWebShortcuts : <ShortcutActivator, Intent>{},
      child: Actions(
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
                  selectionColor: Colors.blue.withOpacity(0.40),
                  textScaleFactor: MediaQuery.textScaleFactorOf(context),
                  textAlign: TextAlign.left,
                  textDirection: _textDirection,
                  locale: Localizations.maybeLocaleOf(context),
                  textHeightBehavior: DefaultTextHeightBehavior.of(context),
                  textWidthBasis: TextWidthBasis.parent,
                  obscuringCharacter: '•',
                  obscureText:
                      false, // This is a non-private text field that does not require obfuscation.
                  offset: position,
                  onCaretChanged: null,
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
    required this.textScaleFactor,
    required this.textAlign,
    required this.textDirection,
    this.locale,
    required this.obscuringCharacter,
    required this.obscureText,
    required this.offset,
    this.onCaretChanged,
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
  final double textScaleFactor;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale? locale;
  final String obscuringCharacter;
  final bool obscureText;
  final TextHeightBehavior? textHeightBehavior;
  final TextWidthBasis textWidthBasis;
  final ViewportOffset offset;
  final CaretChangedHandler? onCaretChanged;
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
      textScaleFactor: textScaleFactor,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale ?? Localizations.maybeLocaleOf(context),
      selection: value.selection,
      offset: offset,
      onCaretChanged: onCaretChanged,
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
      ..textScaleFactor = textScaleFactor
      ..textAlign = textAlign
      ..textDirection = textDirection
      ..locale = locale ?? Localizations.maybeLocaleOf(context)
      ..selection = value.selection
      ..offset = offset
      ..onCaretChanged = onCaretChanged
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
