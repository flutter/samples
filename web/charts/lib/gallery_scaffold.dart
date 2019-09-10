// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

typedef Widget GalleryWidgetBuilder();

/// Helper to build gallery.
class GalleryScaffold extends StatefulWidget {
  /// The widget used for leading in a [ListTile].
  final Widget listTileIcon;
  final String title;
  final String subtitle;
  final GalleryWidgetBuilder childBuilder;

  GalleryScaffold(
      {this.listTileIcon, this.title, this.subtitle, this.childBuilder});

  /// Gets the gallery
  Widget buildGalleryListTile(BuildContext context) => new ListTile(
      leading: listTileIcon,
      title: new Text(title),
      subtitle: new Text(subtitle),
      onTap: () {
        Navigator.push(context, new MaterialPageRoute(builder: (_) => this));
      });

  @override
  _GalleryScaffoldState createState() => new _GalleryScaffoldState();
}

class _GalleryScaffoldState extends State<GalleryScaffold> {
  void _handleButtonPress() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(children: <Widget>[
            new SizedBox(height: 250.0, child: widget.childBuilder()),
          ])),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.refresh), onPressed: _handleButtonPress),
    );
  }
}
