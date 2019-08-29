// ignore_for_file: omit_local_variable_types, annotate_overrides

import 'dart:ui' as ui show Image;

import 'package:flutter/material.dart';

// A model on top of DecorationImage that supports slicing up the source image
// efficiently to draw it as tiles in the puzzle game
@immutable
class DecorationImagePlus implements DecorationImage {
  final int puzzleWidth, puzzleHeight, pieceIndex;

  /// Creates an image to show in a [BoxDecoration].
  ///
  /// The [image], [alignment], [repeat], and [matchTextDirection] arguments
  /// must not be null.
  const DecorationImagePlus({
    @required this.image,
    @required this.puzzleWidth,
    @required this.puzzleHeight,
    @required this.pieceIndex,
    this.colorFilter,
    this.fit,
    this.alignment = Alignment.center,
    this.centerSlice,
    this.repeat = ImageRepeat.noRepeat,
    this.matchTextDirection = false,
  })  : assert(image != null),
        assert(alignment != null),
        assert(repeat != null),
        assert(matchTextDirection != null),
        assert(puzzleHeight > 1 &&
            puzzleHeight > 1 &&
            pieceIndex >= 0 &&
            pieceIndex < (puzzleHeight * puzzleWidth));

  /// The image to be painted into the decoration.
  ///
  /// Typically this will be an [AssetImage] (for an image shipped with the
  /// application) or a [NetworkImage] (for an image obtained from the network).
  final ImageProvider image;

  /// A color filter to apply to the image before painting it.
  final ColorFilter colorFilter;

  /// How the image should be inscribed into the box.
  ///
  /// The default is [BoxFit.scaleDown] if [centerSlice] is null, and
  /// [BoxFit.fill] if [centerSlice] is not null.
  ///
  /// See the discussion at [_paintImage] for more details.
  final BoxFit fit;

  /// How to align the image within its bounds.
  ///
  /// The alignment aligns the given position in the image to the given position
  /// in the layout bounds. For example, an [Alignment] alignment of (-1.0,
  /// -1.0) aligns the image to the top-left corner of its layout bounds, while a
  /// [Alignment] alignment of (1.0, 1.0) aligns the bottom right of the
  /// image with the bottom right corner of its layout bounds. Similarly, an
  /// alignment of (0.0, 1.0) aligns the bottom middle of the image with the
  /// middle of the bottom edge of its layout bounds.
  ///
  /// To display a subpart of an image, consider using a [CustomPainter] and
  /// [Canvas.drawImageRect].
  ///
  /// If the [alignment] is [TextDirection]-dependent (i.e. if it is a
  /// [AlignmentDirectional]), then a [TextDirection] must be available
  /// when the image is painted.
  ///
  /// Defaults to [Alignment.center].
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry alignment;

  /// The center slice for a nine-patch image.
  ///
  /// The region of the image inside the center slice will be stretched both
  /// horizontally and vertically to fit the image into its destination. The
  /// region of the image above and below the center slice will be stretched
  /// only horizontally and the region of the image to the left and right of
  /// the center slice will be stretched only vertically.
  ///
  /// The stretching will be applied in order to make the image fit into the box
  /// specified by [fit]. When [centerSlice] is not null, [fit] defaults to
  /// [BoxFit.fill], which distorts the destination image size relative to the
  /// image's original aspect ratio. Values of [BoxFit] which do not distort the
  /// destination image size will result in [centerSlice] having no effect
  /// (since the nine regions of the image will be rendered with the same
  /// scaling, as if it wasn't specified).
  final Rect centerSlice;

  /// How to paint any portions of the box that would not otherwise be covered
  /// by the image.
  final ImageRepeat repeat;

  /// Whether to paint the image in the direction of the [TextDirection].
  ///
  /// If this is true, then in [TextDirection.ltr] contexts, the image will be
  /// drawn with its origin in the top left (the "normal" painting direction for
  /// images); and in [TextDirection.rtl] contexts, the image will be drawn with
  /// a scaling factor of -1 in the horizontal direction so that the origin is
  /// in the top right.
  final bool matchTextDirection;

  /// Creates a [DecorationImagePainterPlus] for this [DecorationImagePlus].
  ///
  /// The `onChanged` argument must not be null. It will be called whenever the
  /// image needs to be repainted, e.g. because it is loading incrementally or
  /// because it is animated.
  DecorationImagePainterPlus createPainter(VoidCallback onChanged) {
    assert(onChanged != null);
    return DecorationImagePainterPlus._(this, onChanged);
  }

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is DecorationImagePlus &&
        other.runtimeType == runtimeType &&
        image == other.image &&
        colorFilter == other.colorFilter &&
        fit == other.fit &&
        alignment == other.alignment &&
        centerSlice == other.centerSlice &&
        repeat == other.repeat &&
        matchTextDirection == other.matchTextDirection;
  }

  @override
  int get hashCode => hashValues(image, colorFilter, fit, alignment,
      centerSlice, repeat, matchTextDirection);

  @override
  String toString() {
    final List<String> properties = <String>[];
    properties.add('$image');
    if (colorFilter != null) properties.add('$colorFilter');
    if (fit != null &&
        !(fit == BoxFit.fill && centerSlice != null) &&
        !(fit == BoxFit.scaleDown && centerSlice == null))
      properties.add('$fit');
    properties.add('$alignment');
    if (centerSlice != null) properties.add('centerSlice: $centerSlice');
    if (repeat != ImageRepeat.noRepeat) properties.add('$repeat');
    if (matchTextDirection) properties.add('match text direction');
    return '$runtimeType(${properties.join(", ")})';
  }
}

/// The painter for a [DecorationImagePlus].
///
/// To obtain a painter, call [DecorationImagePlus.createPainter].
///
/// To paint, call [paint]. The `onChanged` callback passed to
/// [DecorationImagePlus.createPainter] will be called if the image needs to paint
/// again (e.g. because it is animated or because it had not yet loaded the
/// first time the [paint] method was called).
///
/// This object should be disposed using the [dispose] method when it is no
/// longer needed.
class DecorationImagePainterPlus implements DecorationImagePainter {
  DecorationImagePainterPlus._(this._details, this._onChanged)
      : assert(_details != null) {
    _imageStreamListener = ImageStreamListener(_imageListener);
  }

  final DecorationImagePlus _details;
  final VoidCallback _onChanged;

  ImageStream _imageStream;
  ImageInfo _image;
  ImageStreamListener _imageStreamListener;

  /// Draw the image onto the given canvas.
  ///
  /// The image is drawn at the position and size given by the `rect` argument.
  ///
  /// The image is clipped to the given `clipPath`, if any.
  ///
  /// The `configuration` object is used to resolve the image (e.g. to pick
  /// resolution-specific assets), and to implement the
  /// [DecorationImagePlus.matchTextDirection] feature.
  ///
  /// If the image needs to be painted again, e.g. because it is animated or
  /// because it had not yet been loaded the first time this method was called,
  /// then the `onChanged` callback passed to [DecorationImagePlus.createPainter]
  /// will be called.
  void paint(Canvas canvas, Rect rect, Path clipPath,
      ImageConfiguration configuration) {
    assert(canvas != null);
    assert(rect != null);
    assert(configuration != null);

    if (_details.matchTextDirection) {
      assert(() {
        // We check this first so that the assert will fire immediately, not just
        // when the image is ready.
        if (configuration.textDirection == null) {
          throw FlutterError(
              'ImageDecoration.matchTextDirection can only be used when a TextDirection is available.\n'
              'When DecorationImagePainter.paint() was called, there was no text direction provided '
              'in the ImageConfiguration object to match.\n'
              'The DecorationImage was:\n'
              '  $_details\n'
              'The ImageConfiguration was:\n'
              '  $configuration');
        }
        return true;
      }());
    }

    final ImageStream newImageStream = _details.image.resolve(configuration);
    if (newImageStream.key != _imageStream?.key) {
      _imageStream?.removeListener(_imageStreamListener);
      _imageStream = newImageStream..addListener(_imageStreamListener);
    }
    if (_image == null) return;

    if (clipPath != null) {
      canvas.save();
      canvas.clipPath(clipPath);
    }

    _paintImage(
      canvas: canvas,
      puzzleWidth: _details.puzzleWidth,
      puzzleHeight: _details.puzzleHeight,
      pieceIndex: _details.pieceIndex,
      rect: rect,
      image: _image.image,
      scale: _image.scale,
      colorFilter: _details.colorFilter,
      fit: _details.fit,
      alignment: _details.alignment.resolve(configuration.textDirection),
    );

    if (clipPath != null) canvas.restore();
  }

  void _imageListener(ImageInfo value, bool synchronousCall) {
    if (_image == value) return;
    _image = value;
    assert(_onChanged != null);
    if (!synchronousCall) _onChanged();
  }

  /// Releases the resources used by this painter.
  ///
  /// This should be called whenever the painter is no longer needed.
  ///
  /// After this method has been called, the object is no longer usable.
  @mustCallSuper
  void dispose() {
    _imageStream?.removeListener(_imageStreamListener);
  }

  @override
  String toString() {
    return '$runtimeType(stream: $_imageStream, image: $_image) for $_details';
  }
}

void _paintImage(
    {@required Canvas canvas,
    @required Rect rect,
    @required ui.Image image,
    @required int puzzleWidth,
    @required int puzzleHeight,
    @required int pieceIndex,
    double scale = 1.0,
    ColorFilter colorFilter,
    BoxFit fit,
    Alignment alignment = Alignment.center}) {
  assert(canvas != null);
  assert(image != null);
  assert(alignment != null);

  if (rect.isEmpty) return;
  final outputSize = rect.size;
  final inputSize = Size(image.width.toDouble(), image.height.toDouble());
  fit ??= BoxFit.scaleDown;
  final FittedSizes fittedSizes =
      applyBoxFit(fit, inputSize / scale, outputSize);
  final Size sourceSize = fittedSizes.source * scale;
  final destinationSize = fittedSizes.destination;
  final Paint paint = Paint()
    ..isAntiAlias = false
    ..filterQuality = FilterQuality.medium;
  if (colorFilter != null) paint.colorFilter = colorFilter;
  final double halfWidthDelta =
      (outputSize.width - destinationSize.width) / 2.0;
  final double halfHeightDelta =
      (outputSize.height - destinationSize.height) / 2.0;
  final double dx = halfWidthDelta + (alignment.x) * halfWidthDelta;
  final double dy = halfHeightDelta + alignment.y * halfHeightDelta;
  final Offset destinationPosition = rect.topLeft.translate(dx, dy);
  final Rect destinationRect = destinationPosition & destinationSize;
  final Rect sourceRect =
      alignment.inscribe(sourceSize, Offset.zero & inputSize);

  final sliceSize =
      Size(sourceRect.width / puzzleWidth, sourceRect.height / puzzleHeight);

  final col = pieceIndex % puzzleWidth;
  final row = pieceIndex ~/ puzzleWidth;

  final sliceRect = Rect.fromLTWH(
      sourceRect.left + col * sliceSize.width,
      sourceRect.top + row * sliceSize.height,
      sliceSize.width,
      sliceSize.height);

  canvas.drawImageRect(image, sliceRect, destinationRect, paint);
}
