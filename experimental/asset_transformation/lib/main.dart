import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('This is an image asset that was declared in pubspec.yaml. '
                  'If you open the file, you will notice that the image is '
                  'colorful, but in the app it appears in grayscale. This is '
                  'because the transformer it was declared with produced the '
                  'image in grayscale.'),
              Image.asset('assets/colorful.jpg'),
              SizedBox(height: 80),
              Text("This is an SVG image rendered using the vector_graphics "
                  "package. Normally, the package can only render images produced "
                  "by the vector_graphics_compiler package. However, since we "
                  "configured the SVG asset with vector_graphics_compiler as a "
                  "transformer, we can render it directly using the "
                  "vector_graphics API."),
              VectorGraphic(loader: AssetBytesLoader('assets/svg.svg')),
            ],
          ),
        ),
      ),
    );
  }
}
