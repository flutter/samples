// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

import '../../unsplash_access_key.dart';
import '../unsplash/photo.dart';

final _unsplashHomepage = Uri.parse(
  'https://unsplash.com/?utm_source=$unsplashAppName&utm_medium=referral',
);

typedef PhotoDetailsPhotoSaveCallback = void Function(Photo);

class PhotoDetails extends StatefulWidget {
  const PhotoDetails({
    required this.photo,
    required this.onPhotoSave,
    super.key,
  });
  final Photo photo;
  final PhotoDetailsPhotoSaveCallback onPhotoSave;

  @override
  State<PhotoDetails> createState() => _PhotoDetailsState();
}

class _PhotoDetailsState extends State<PhotoDetails> {
  Widget _buildPhotoAttribution(BuildContext context) {
    return Row(
      children: [
        const Text('Photo by '),
        Link(
          uri: Uri.parse(
            'https://unsplash.com/@${widget.photo.user!.username}?utm_source=$unsplashAppName&utm_medium=referral',
          ),
          builder: (context, followLink) => TextButton(
            onPressed: followLink,
            child: Text(widget.photo.user!.name),
          ),
        ),
        const Text(' on '),
        Link(
          uri: _unsplashHomepage,
          builder: (context, followLink) => TextButton(
            onPressed: followLink,
            child: const Text('Unsplash'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        primary: true,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Card(
                shape: ContinuousRectangleBorder(
                  side: const BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 750),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 400,
                        minHeight: 400,
                      ),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        imageSemanticLabel: widget.photo.description,
                        image: widget.photo.urls!.small!,
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
                      tooltip: 'Download',
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.cloud_download),
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
