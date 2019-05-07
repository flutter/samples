// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';

class ComponentDemoTabData {
  ComponentDemoTabData({
    this.demoWidget,
    this.exampleCodeTag,
    this.description,
    this.tabName,
    this.documentationUrl,
  });

  final Widget demoWidget;
  final String exampleCodeTag;
  final String description;
  final String tabName;
  final String documentationUrl;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    final ComponentDemoTabData typedOther = other;
    return typedOther.tabName == tabName &&
        typedOther.description == description &&
        typedOther.documentationUrl == documentationUrl;
  }

  @override
  int get hashCode => hashValues(tabName, description, documentationUrl);
}

class TabbedComponentDemoScaffold extends StatelessWidget {
  const TabbedComponentDemoScaffold({
    this.title,
    this.demos,
    this.actions,
  });

  final List<ComponentDemoTabData> demos;
  final String title;
  final List<Widget> actions;

  void _showExampleCode(BuildContext context) {
    final String tag =
        demos[DefaultTabController.of(context).index].exampleCodeTag;
    if (tag != null) {
      throw new UnimplementedError();
      // TODO:
//      Navigator.push(context, MaterialPageRoute<FullScreenCodeDialog>(
//          builder: (BuildContext context) => FullScreenCodeDialog(exampleCodeTag: tag)
//      ));
    }
  }

  void _showApiDocumentation(BuildContext context) {
    final String url =
        demos[DefaultTabController.of(context).index].documentationUrl;
    if (url != null) {
      // launch(url, forceWebView: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: demos.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: (actions ?? <Widget>[])
            ..addAll(
              <Widget>[
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(Icons.library_books),
                      onPressed: () => _showApiDocumentation(context),
                    );
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(Icons.code),
                      tooltip: 'Show example code',
                      onPressed: () => _showExampleCode(context),
                    );
                  },
                )
              ],
            ),
          bottom: TabBar(
            isScrollable: true,
            tabs: demos
                .map<Widget>(
                    (ComponentDemoTabData data) => Tab(text: data.tabName))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: demos.map<Widget>((ComponentDemoTabData demo) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(demo.description,
                          style: Theme.of(context).textTheme.subhead)),
                  Expanded(child: demo.demoWidget)
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MaterialDemoDocumentationButton extends StatelessWidget {
  MaterialDemoDocumentationButton(String routeName, {Key key})
      : documentationUrl = 'todo',
        assert(
          'todo' != null,
          'A documentation URL was not specified for demo route $routeName in kAllGalleryDemos',
        ),
        super(key: key);

  final String documentationUrl;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.library_books),
        tooltip: 'API documentation',
        // TODO(flutter_web): launch(documentationUrl, forceWebView: true)
        onPressed: () => {});
  }
}

Widget wrapScaffold(String title, BuildContext context, Key key, Widget child,
    String routeName) {
  IconData _backIcon() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return Icons.arrow_back;
      case TargetPlatform.iOS:
        return Icons.arrow_back_ios;
    }
    assert(false);
    return null;
  }

  return Scaffold(
    key: key,
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(_backIcon()),
        alignment: Alignment.centerLeft,
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(title),
      actions: <Widget>[MaterialDemoDocumentationButton(routeName)],
    ),
    body: Material(child: Center(child: child)),
  );
}

class CupertinoDemoDocumentationButton extends StatelessWidget {
  CupertinoDemoDocumentationButton(String routeName, {Key key})
      : documentationUrl = 'todo',
        assert(
          'todo' != null,
          'A documentation URL was not specified for demo route $routeName in kAllGalleryDemos',
        ),
        super(key: key);

  final String documentationUrl;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        child: Semantics(
          label: 'API documentation',
          child: const Icon(CupertinoIcons.book),
        ),
        // TODO(flutter_web): launch(documentationUrl, forceWebView: true)
        onPressed: () => {});
  }
}
