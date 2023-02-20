// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum Shader {
  nothing('nothing'),
  bwSplit('bw_split'),
  colorSplit('color_split'),
  rowOffset('row_offset'),
  wavyCirc('wavy_circ'),
  wavy('wavy'),
  wavy2('wavy2');

  const Shader(this.name);
  final String name;
  Future<ui.FragmentProgram> get program =>
      ui.FragmentProgram.fromAsset('shaders/$name.frag');
}

class FragmentShaded extends StatefulWidget {
  final Widget child;
  final Shader shader;
  final int shaderDuration;
  static const int dampenDuration = 1000;
  static final Map<Shader, ui.FragmentProgram> _programCache = {};

  const FragmentShaded({
    required this.shader,
    required this.shaderDuration,
    required this.child,
    super.key,
  });

  @override
  State<FragmentShaded> createState() => FragmentShadedState();
}

class FragmentShadedState extends State<FragmentShaded>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _dampenAnimation;
  late final Animation<double> _dampenCurve;
  late final AnimationController _dampenController;
  late AnimatingSamplerBuilder builder;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.shaderDuration),
    )..repeat(reverse: false);
    _dampenController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: FragmentShaded.dampenDuration),
    );
    _dampenCurve = CurvedAnimation(
      parent: _dampenController,
      curve: Curves.easeInOut,
    );
    _dampenAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(_dampenCurve);
    initializeFragmentProgramsAndBuilder();
  }

  Future<void> initializeFragmentProgramsAndBuilder() async {
    if (FragmentShaded._programCache.isEmpty) {
      for (final shader in Shader.values) {
        FragmentShaded._programCache[shader] = await shader.program;
      }
    }

    setState(() {
      builder = AnimatingSamplerBuilder(_controller, _dampenAnimation,
          FragmentShaded._programCache[widget.shader]!.fragmentShader());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _dampenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (null == FragmentShaded._programCache[widget.shader]) {
      setState(() {});
      return const SizedBox(
        width: 0,
        height: 0,
      );
    }
    return Transform.scale(
      scale: 0.5,
      child: ShaderSamplerBuilder(
        builder,
        child: widget.child,
      ),
    );
  }

  void startDampening() {
    _dampenController.forward();
  }
}

class AnimatingSamplerBuilder extends SamplerBuilder {
  AnimatingSamplerBuilder(
      this.animation, this.dampenAnimation, this.fragmentShader) {
    animation.addListener(notifyListeners);
    dampenAnimation.addListener(notifyListeners);
  }

  final Animation<double> animation;
  final Animation<double> dampenAnimation;

  final ui.FragmentShader fragmentShader;

  @override
  void paint(ui.Image image, Size size, ui.Canvas canvas) {
    // animation
    fragmentShader.setFloat(0, animation.value);
    // width
    fragmentShader.setFloat(1, size.width);
    // height
    fragmentShader.setFloat(2, size.height);
    // dampener
    fragmentShader.setFloat(3, dampenAnimation.value);
    // sampler
    fragmentShader.setImageSampler(0, image);

    canvas.drawRect(Offset.zero & size, Paint()..shader = fragmentShader);
  }
}

abstract class SamplerBuilder extends ChangeNotifier {
  void paint(ui.Image image, Size size, ui.Canvas canvas);
}

class ShaderSamplerBuilder extends StatelessWidget {
  const ShaderSamplerBuilder(this.builder, {required this.child, super.key});

  final SamplerBuilder builder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
        child: _ShaderSamplerImpl(
      builder,
      child: child,
    ));
  }
}

class _ShaderSamplerImpl extends SingleChildRenderObjectWidget {
  const _ShaderSamplerImpl(this.builder, {super.child});

  final SamplerBuilder builder;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderShaderSamplerBuilderWidget(
      devicePixelRatio: MediaQuery.of(context).devicePixelRatio,
      builder: builder,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderObject renderObject) {
    (renderObject as _RenderShaderSamplerBuilderWidget)
      ..devicePixelRatio = MediaQuery.of(context).devicePixelRatio
      ..builder = builder;
  }
}

// A render object that conditionally converts its child into a [ui.Image]
// and then paints it in place of the child.
class _RenderShaderSamplerBuilderWidget extends RenderProxyBox {
  // Create a new [_RenderSnapshotWidget].
  _RenderShaderSamplerBuilderWidget({
    required double devicePixelRatio,
    required SamplerBuilder builder,
  })  : _devicePixelRatio = devicePixelRatio,
        _builder = builder;

  /// The device pixel ratio used to create the child image.
  double get devicePixelRatio => _devicePixelRatio;
  double _devicePixelRatio;
  set devicePixelRatio(double value) {
    if (value == devicePixelRatio) {
      return;
    }
    _devicePixelRatio = value;
    if (_childRaster == null) {
      return;
    } else {
      _childRaster?.dispose();
      _childRaster = null;
      markNeedsPaint();
    }
  }

  /// The painter used to paint the child snapshot or child widgets.
  SamplerBuilder get builder => _builder;
  SamplerBuilder _builder;
  set builder(SamplerBuilder value) {
    if (value == builder) {
      return;
    }
    builder.removeListener(markNeedsPaint);
    _builder = value;
    builder.addListener(markNeedsPaint);
    markNeedsPaint();
  }

  ui.Image? _childRaster;

  @override
  void attach(PipelineOwner owner) {
    builder.addListener(markNeedsPaint);
    super.attach(owner);
  }

  @override
  void detach() {
    _childRaster?.dispose();
    _childRaster = null;
    builder.removeListener(markNeedsPaint);
    super.detach();
  }

  @override
  void dispose() {
    builder.removeListener(markNeedsPaint);
    _childRaster?.dispose();
    _childRaster = null;
    super.dispose();
  }

  // Paint [child] with this painting context, then convert to a raster and detach all
  // children from this layer.
  ui.Image? _paintAndDetachToImage() {
    final OffsetLayer offsetLayer = OffsetLayer();
    final PaintingContext context =
        PaintingContext(offsetLayer, Offset.zero & size);
    super.paint(context, Offset.zero);
    // This ignore is here because this method is protected by the `PaintingContext`. Adding a new
    // method that performs the work of `_paintAndDetachToImage` would avoid the need for this, but
    // that would conflict with our goals of minimizing painting context.
    // ignore: invalid_use_of_protected_member
    context.stopRecordingIfNeeded();
    final ui.Image image = offsetLayer.toImageSync(Offset.zero & size,
        pixelRatio: devicePixelRatio);
    offsetLayer.dispose();
    return image;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.isEmpty) {
      _childRaster?.dispose();
      _childRaster = null;
      return;
    }
    _childRaster?.dispose();
    _childRaster = _paintAndDetachToImage();
    builder.paint(_childRaster!, size, context.canvas);
  }
}
