// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:provider/provider.dart';

import '../model/photo_search_model.dart';
import '../unsplash/photo.dart';
import '../widgets/photo_details.dart';
import '../widgets/split.dart' as split;

class UnsplashSearchContent extends StatefulWidget {
  const UnsplashSearchContent({super.key});

  @override
  State<UnsplashSearchContent> createState() => _UnsplashSearchContentState();
}

class _UnsplashSearchContentState extends State<UnsplashSearchContent> {
  final _treeViewScrollController = ScrollController();

  @override
  dispose() {
    _treeViewScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final photoSearchModel = Provider.of<PhotoSearchModel>(context);

    return split.Split(
      axis: Axis.horizontal,
      initialFirstFraction: 0.4,
      firstChild: Scrollbar(
        controller: _treeViewScrollController,
        child: SingleChildScrollView(
          controller: _treeViewScrollController,
          child: TreeView(
            nodes: photoSearchModel.entries.map(_buildSearchEntry).toList(),
            indent: 0,
          ),
        ),
      ),
      secondChild: Center(
        child:
            photoSearchModel.selectedPhoto != null
                ? PhotoDetails(
                  photo: photoSearchModel.selectedPhoto!,
                  onPhotoSave: (photo) async {
                    final saveLocation = await getSaveLocation(
                      suggestedName: '${photo.id}.jpg',
                      acceptedTypeGroups: [
                        const XTypeGroup(
                          label: 'JPG',
                          extensions: ['jpg'],
                          mimeTypes: ['image/jpeg'],
                        ),
                      ],
                    );
                    if (saveLocation != null) {
                      final fileData = await photoSearchModel.download(
                        photo: photo,
                      );
                      final photoFile = XFile.fromData(
                        fileData,
                        mimeType: 'image/jpeg',
                      );
                      await photoFile.saveTo(saveLocation.path);
                    }
                  },
                )
                : Container(),
      ),
    );
  }

  TreeNode _buildSearchEntry(SearchEntry searchEntry) {
    void selectPhoto(Photo photo) {
      searchEntry.model.selectedPhoto = photo;
    }

    String labelForPhoto(Photo photo) => 'Photo by ${photo.user!.name}';

    return TreeNode(
      content: Expanded(child: Text(searchEntry.query)),
      children:
          searchEntry.photos
              .map<TreeNode>(
                (photo) => TreeNode(
                  content: Expanded(
                    child: Semantics(
                      button: true,
                      onTap: () => selectPhoto(photo),
                      label: labelForPhoto(photo),
                      excludeSemantics: true,
                      child: InkWell(
                        onTap: () => selectPhoto(photo),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(labelForPhoto(photo)),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
    );
  }
}
