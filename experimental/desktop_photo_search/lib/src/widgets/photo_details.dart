// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:meta/meta.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../unsplash_access_key.dart';
import '../unsplash/photo.dart';

final _unsplashHomepage = Uri.encodeFull(
    'https://unsplash.com/?utm_source=$unsplashAppName&utm_medium=referral');

typedef PhotoDetailsPhotoSaveCallback = void Function(Photo);

class PhotoDetails extends StatefulWidget {
  const PhotoDetails({
    @required this.photo,
    @required this.onPhotoSave,
  });
  final Photo photo;
  final PhotoDetailsPhotoSaveCallback onPhotoSave;

  @override
  _PhotoDetailsState createState() => _PhotoDetailsState();
}

class _PhotoDetailsState extends State<PhotoDetails>
    with TickerProviderStateMixin {
  Widget _buildPhotoAttribution(BuildContext context) {
    return Expanded(
      child: RichText(
        overflow: TextOverflow.fade,
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            const TextSpan(text: 'Photo by '),
            TextSpan(
              text: widget.photo.user.name,
              style: const TextStyle(
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final url = Uri.encodeFull(
                      'https://unsplash.com/@${widget.photo.user.username}?utm_source=$unsplashAppName&utm_medium=referral');
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
                  if (await url_launcher.canLaunch(_unsplashHomepage)) {
                    await url_launcher.launch(_unsplashHomepage);
                  }
                },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
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
                child: AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 750),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 400,
                        minHeight: 400,
                      ),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: widget.photo.urls.small,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPhotoAttribution(context),
                    const SizedBox(width: 8),
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      icon: Icon(Icons.cloud_download),
                      onPressed: () => widget.onPhotoSave(widget.photo),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
