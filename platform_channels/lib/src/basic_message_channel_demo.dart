// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/platform_message_channel.dart';

/// Demonstrates how to use [BasicMessageChannel] to send the message to platform
/// and receive a reply using different [MessageCodec]s.
///
/// The widget has a [DropDownButton] which can be used to change the [MessageCodec],
/// and a [TextField] to enter the text and send the message.
class BasicMessageChannelDemo extends StatefulWidget {
  @override
  _BasicMessageChannelDemoState createState() =>
      _BasicMessageChannelDemoState();
}

class _BasicMessageChannelDemoState extends State<BasicMessageChannelDemo> {
  Future<String> platformReply;
  List<String> codecs = ['BinaryCodec', 'JSONMessageCodec', 'StringCodec'];
  String codec = 'StringCodec';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline5;
    return Scaffold(
      appBar: AppBar(
        title: Text('BasicMessageChannel Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            Text(
              'Select a MessageCodec',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              value: codec,
              onChanged: (value) {
                setState(() {
                  codec = value;
                });
              },
              items: codecs
                  .map<DropdownMenuItem<String>>((codec) => DropdownMenuItem(
                        value: codec,
                        child: Text(codec),
                      ))
                  .toList(),
            ),
            Expanded(
              child: Center(
                child: FutureBuilder<String>(
                  future: platformReply,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.none) {
                      return Text(
                        'Send a message to get a Reply',
                        style: textStyle,
                      );
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      return Text(
                        snapshot.data,
                        style: textStyle,
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    setState(() {
                      platformReply = PlatformMessages.sendPlatformMessage(
                        controller.value.text,
                        codec,
                      );
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
