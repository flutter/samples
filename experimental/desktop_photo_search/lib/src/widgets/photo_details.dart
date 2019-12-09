// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:meta/meta.dart';

import '../../unsplash_access_key.dart';
import '../unsplash/photo.dart';

final _unsplashHomepage = Uri.encodeFull(
    'https://unsplash.com/?utm_source=$unsplashAppName&utm_medium=referral');

typedef PhotoDetailsPhotoSaveCallback = void Function(Photo);

class PhotoDetails extends StatelessWidget {
  const PhotoDetails({
    @required this.photo,
    @required this.onPhotoSave,
  });
  final Photo photo;
  final PhotoDetailsPhotoSaveCallback onPhotoSave;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Card(
                shape: ContinuousRectangleBorder(
                  side: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
                  child: Image.network(photo.urls.small),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.body1,
                        children: [
                          const TextSpan(text: 'Photo by '),
                          TextSpan(
                            text: photo.user.name,
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final url = Uri.encodeFull(
                                    'https://unsplash.com/@${photo.user.username}?utm_source=$unsplashAppName&utm_medium=referral');
                                if (await url_launcher.canLaunch(url)) {
                                  await url_launcher.launch(url);
                                }
                              },
                          ),
                          const TextSpan(text: ' on '),
                          TextSpan(
                            text: 'Unsplash',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (await url_launcher
                                    .canLaunch(_unsplashHomepage)) {
                                  await url_launcher.launch(_unsplashHomepage);
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      icon: Icon(Icons.cloud_download),
                      onPressed: () => onPhotoSave(photo),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      );
}
