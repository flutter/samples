import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'basic_text_input_client.dart';

/// A basic text field. Defines the appearance of a basic text input client.
class BasicTextField extends StatefulWidget {
  const BasicTextField({
    super.key,
    required this.controller,
    required this.style,
    required this.focusNode,
    this.contextMenuBuilder = _defaultContextMenuBuilder,
  });

  final TextEditingController controller;
  final TextStyle style;
  final FocusNode focusNode;
  final BasicTextFieldContextMenuBuilder? contextMenuBuilder;

  static Widget _defaultContextMenuBuilder(
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
  ) {
    return AdaptiveTextSelectionToolbar.editable(
      clipboardStatus: clipboardStatus,
      onCopy: onCopy,
      onCut: onCut,
      onPaste: onPaste,
      onSelectAll: onSelectAll,
      onLookUp: onLookUp,
      onLiveTextInput: onLiveTextInput,
      onSearchWeb: onSearchWeb,
      onShare: onShare,
      anchors: anchors,
    );
  }

  @override
  State<BasicTextField> createState() => _BasicTextFieldState();
}

class _BasicTextFieldState extends State<BasicTextField> {
  final GlobalKey<BasicTextInputClientState> textInputClientKey =
      GlobalKey<BasicTextInputClientState>();
  BasicTextInputClientState? get _textInputClient =>
      textInputClientKey.currentState;
  RenderEditable get _renderEditable => _textInputClient!.renderEditable;

  // For text selection gestures.
  // The viewport offset pixels of the [RenderEditable] at the last drag start.
  double _dragStartViewportOffset = 0.0;
  late DragStartDetails _startDetails;

  // For text selection.
  TextSelectionControls? _textSelectionControls;
  bool _showSelectionHandles = false;

  bool _shouldShowSelectionHandles(SelectionChangedCause? cause) {
    // When the text field is activated by something that doesn't trigger the
    // selection overlay, we shouldn't show the handles either.
    if (cause == SelectionChangedCause.keyboard) {
      return false;
    }

    if (cause == SelectionChangedCause.longPress ||
        cause == SelectionChangedCause.scribble) {
      return true;
    }

    if (widget.controller.text.isNotEmpty) {
      return true;
    }

    return false;
  }

  void _handleSelectionChanged(
    TextSelection selection,
    SelectionChangedCause? cause,
  ) {
    final bool willShowSelectionHandles = _shouldShowSelectionHandles(cause);
    if (willShowSelectionHandles != _showSelectionHandles) {
      setState(() {
        _showSelectionHandles = willShowSelectionHandles;
      });
    }
  }

  void _onDragUpdate(DragUpdateDetails details) {
    final Offset startOffset =
        _renderEditable.maxLines == 1
            ? Offset(
              _renderEditable.offset.pixels - _dragStartViewportOffset,
              0.0,
            )
            : Offset(
              0.0,
              _renderEditable.offset.pixels - _dragStartViewportOffset,
            );

    _renderEditable.selectPositionAt(
      from: _startDetails.globalPosition - startOffset,
      to: details.globalPosition,
      cause: SelectionChangedCause.drag,
    );
  }

  void _onDragStart(DragStartDetails details) {
    _startDetails = details;
    _dragStartViewportOffset = _renderEditable.offset.pixels;
  }

  @override
  Widget build(BuildContext context) {
    switch (Theme.of(this.context).platform) {
      // ignore: todo
      // TODO(Renzo-Olivares): Remove use of deprecated members once
      // TextSelectionControls.buildToolbar has been deleted.
      // See https://github.com/flutter/flutter/pull/124611 and
      // https://github.com/flutter/flutter/pull/124262 for more details.
      case TargetPlatform.iOS:
        // ignore: deprecated_member_use
        _textSelectionControls = cupertinoTextSelectionHandleControls;
      case TargetPlatform.macOS:
        // ignore: deprecated_member_use
        _textSelectionControls = cupertinoDesktopTextSelectionHandleControls;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        // ignore: deprecated_member_use
        _textSelectionControls = materialTextSelectionHandleControls;
      case TargetPlatform.linux:
        // ignore: deprecated_member_use
        _textSelectionControls = desktopTextSelectionHandleControls;
      case TargetPlatform.windows:
        // ignore: deprecated_member_use
        _textSelectionControls = desktopTextSelectionHandleControls;
    }

    return TextFieldTapRegion(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onPanStart: (dragStartDetails) => _onDragStart(dragStartDetails),
        onPanUpdate: (dragUpdateDetails) => _onDragUpdate(dragUpdateDetails),
        onSecondaryTapDown: (secondaryTapDownDetails) {
          _renderEditable.selectWordsInRange(
            from: secondaryTapDownDetails.globalPosition,
            cause: SelectionChangedCause.tap,
          );
          _renderEditable.handleSecondaryTapDown(secondaryTapDownDetails);
          _textInputClient!.hideToolbar();
          _textInputClient!.showToolbar();
        },
        onTap: () {
          _textInputClient!.requestKeyboard();
          _textInputClient!.hideToolbar();
        },
        onTapDown: (tapDownDetails) {
          _renderEditable.handleTapDown(tapDownDetails);
          _renderEditable.selectPosition(cause: SelectionChangedCause.tap);
        },
        onLongPressMoveUpdate: (longPressMoveUpdateDetails) {
          switch (Theme.of(this.context).platform) {
            case TargetPlatform.iOS:
            case TargetPlatform.macOS:
              _renderEditable.selectPositionAt(
                from: longPressMoveUpdateDetails.globalPosition,
                cause: SelectionChangedCause.longPress,
              );
            case TargetPlatform.android:
            case TargetPlatform.fuchsia:
            case TargetPlatform.linux:
            case TargetPlatform.windows:
              _renderEditable.selectWordsInRange(
                from:
                    longPressMoveUpdateDetails.globalPosition -
                    longPressMoveUpdateDetails.offsetFromOrigin,
                to: longPressMoveUpdateDetails.globalPosition,
                cause: SelectionChangedCause.longPress,
              );
          }
        },
        onLongPressEnd:
            (longPressEndDetails) => _textInputClient!.showToolbar(),
        onHorizontalDragStart:
            (dragStartDetails) => _onDragStart(dragStartDetails),
        onHorizontalDragUpdate:
            (dragUpdateDetails) => _onDragUpdate(dragUpdateDetails),
        child: SizedBox(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            ),
            child: BasicTextInputClient(
              key: textInputClientKey,
              controller: widget.controller,
              style: widget.style,
              focusNode: widget.focusNode,
              selectionControls: _textSelectionControls,
              onSelectionChanged: _handleSelectionChanged,
              showSelectionHandles: _showSelectionHandles,
              contextMenuBuilder: widget.contextMenuBuilder,
            ),
          ),
        ),
      ),
    );
  }
}
