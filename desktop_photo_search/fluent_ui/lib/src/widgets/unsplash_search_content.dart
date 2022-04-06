// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:file_selector/file_selector.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

import '../model/photo_search_model.dart';
import '../unsplash/photo.dart';
import '../widgets/photo_details.dart';
import '../widgets/split.dart';

class UnsplashSearchContent extends StatefulWidget {
  const UnsplashSearchContent({Key? key}) : super(key: key);

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

    return Split(
      axis: Axis.horizontal,
      initialFirstFraction: 0.4,
      firstChild: Scrollbar(
        controller: _treeViewScrollController,
        child: SingleChildScrollView(
          controller: _treeViewScrollController,
          child: TreeView(
            items: photoSearchModel.entries.map(_buildSearchEntry).toList(),
          ),
        ),
      ),
      secondChild: Center(
        child: photoSearchModel.selectedPhoto != null
            ? PhotoDetails(
                photo: photoSearchModel.selectedPhoto!,
                onPhotoSave: (photo) async {
                  final path = await getSavePath(
                    suggestedName: '${photo.id}.jpg',
                    acceptedTypeGroups: [
                      XTypeGroup(
                        label: 'JPG',
                        extensions: ['jpg'],
                        mimeTypes: ['image/jpeg'],
                      ),
                    ],
                  );
                  if (path != null) {
                    final fileData =
                        await photoSearchModel.download(photo: photo);
                    final photoFile =
                        XFile.fromData(fileData, mimeType: 'image/jpeg');
                    await photoFile.saveTo(path);
                  }
                },
              )
            : Container(),
      ),
    );
  }

  TreeViewItem _buildSearchEntry(SearchEntry searchEntry) {
    void selectPhoto(Photo photo) {
      searchEntry.model.selectedPhoto = photo;
    }

    String labelForPhoto(Photo photo) => 'Photo by ${photo.user!.name}';

    return TreeViewItem(
      content: Text(searchEntry.query),
      children: searchEntry.photos
          .map<TreeViewItem>(
            (photo) => TreeViewItem(
              content: Semantics(
                button: true,
                onTap: () => selectPhoto(photo),
                label: labelForPhoto(photo),
                excludeSemantics: true,
                child: GestureDetector(
                  onTap: () => selectPhoto(photo),
                  child: Text(
                    labelForPhoto(photo),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
