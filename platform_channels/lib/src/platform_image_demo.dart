// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
  Future<Uint8List> imageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Image Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.6,
                child: FutureBuilder<Uint8List>(
                  future: imageData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.none) {
                      return Placeholder();
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      return Image.memory(
                        snapshot.data,
                        fit: BoxFit.fill,
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              onPressed: imageData != null
                  ? null
                  : () {
                      setState(() {
                        imageData = PlatformImageFetcher.getImage();
                      });
                    },
              child: Text('Get Image'),
            )
          ],
        ),
      ),
    );
  }
}
