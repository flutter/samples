import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_shaders/flutter_shaders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Shader Demo',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Shader Demo')),
      body: ShaderBuilder(
        assetKey: 'shaders/simple.frag',
        (context, shader, child) => CustomPaint(
          size: MediaQuery.of(context).size,
          painter: ShaderPainter(shader: shader),
        ),
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class ShaderPainter extends CustomPainter {
  ShaderPainter({required this.shader})
    : _width = shader.getUniformFloat('resolution', 0),
      _height = shader.getUniformFloat('resolution', 1);

  final ui.FragmentShader shader;
  final ui.UniformFloatSlot _width;
  final ui.UniformFloatSlot _height;

  @override
  void paint(Canvas canvas, Size size) {
    _width.set(size.width);
    _height.set(size.height);

    final paint = Paint()..shader = shader;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
