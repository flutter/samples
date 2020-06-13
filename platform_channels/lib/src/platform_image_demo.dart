import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform_channels/src/image_basic_message_channel.dart';

/// Demonstrates how to use [BasicMessageChannel] to get an image from platform.
///
/// The widget uses [Image.memory] to display the image obtained from the
/// platform.
class PlatformImageDemo extends StatefulWidget {
  @override
  _PlatformImageDemoState createState() => _PlatformImageDemoState();
}

class _PlatformImageDemoState extends State<PlatformImageDemo> {
  Uint8List imageData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Image Demo'),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height / 2,
                  width: size.width,
                  child: imageData == null
                      ? Placeholder()
                      : Image.memory(
                          imageData,
                          fit: BoxFit.fill,
                        ),
                ),
                SizedBox(
                  height: 16,
                ),
                RaisedButton(
                  onPressed: imageData != null
                      ? null
                      : () async {
                          try {
                            final result = await PlatformImage.getImage();
                            setState(() => imageData = result);
                          } catch (error) {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(error.message.toString()),
                              ),
                            );
                          }
                        },
                  child: Text('Get Image'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
