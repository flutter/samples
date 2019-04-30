import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'utils.dart';
import 'widgets.dart';

String _generateRandomHeadline(Random random) {
  final artist = capitalizePair(wordPairIterator.first);

  switch (random.nextInt(9)) {
    case 0:
      return '$artist says ${nouns[random.nextInt(nouns.length)]}';
    case 1:
      return '$artist arrested due to ${wordPairIterator.first.join(' ')}';
    case 2:
      return '$artist releases ${capitalizePair(wordPairIterator.first)}';
    case 3:
      return '$artist talks about his ${nouns[random.nextInt(nouns.length)]}';
    case 4:
      return '$artist talks about her ${nouns[random.nextInt(nouns.length)]}';
    case 5:
      return '$artist talks about their ${nouns[random.nextInt(nouns.length)]}';
    case 6:
      return '$artist says their music is inspired by ${wordPairIterator.first.join(' ')}';
    case 7:
      return '$artist says the world needs more ${nouns[random.nextInt(nouns.length)]}';
    case 7:
      return '$artist calls their band ${adjectives[random.nextInt(adjectives.length)]}';
    case 8:
      return '$artist finally ready to talk about ${nouns[random.nextInt(nouns.length)]}';
  }

  assert(false, 'Failed to generate news headline');
  return null;
}

class Tab2 extends StatefulWidget {
  static const title = 'News';
  static const androidIcon = Icon(Icons.library_books);
  static const iosIcon = Icon(CupertinoIcons.news);

  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  static const _itemsLength = 20;

  List<Color> colors;
  List<String> titles;
  List<String> contents;

  @override
  void initState() {
    final random = Random();
    colors = getRandomColors(_itemsLength);
    titles = List<String>.generate(
      _itemsLength,
      (var index) => _generateRandomHeadline(random),
    );
    contents = List<String>.generate(
      _itemsLength,
      (var index) => lorem(paragraphs: 1, words: 24),
    );
    super.initState();
  }

  Widget _listBuilder(var context, var index) {
    if (index >= _itemsLength)
      return null;

    return SafeArea(
      top: false,
      bottom: false,
      child: Card(
        elevation: 1.5,
        margin: EdgeInsets.fromLTRB(6, 12, 6, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          // Make it splash on Android. It would happen automatically if this
          // was a real card but this is just a demo. Skip the splash on iOS.
          onTap: Theme.of(context).platform == TargetPlatform.iOS ? null : () {},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: colors[index],
                  child: Text(
                    titles[index].substring(0, 1),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 16)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Text(
                        contents[index],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }

  // ===========================================================================
  // Non-shared code below because this tab uses different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(var context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Tab2.title),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView.builder(
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  Widget _buildIos(var context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: Container(
        color: Colors.grey[100],
        child: ListView.builder(
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  @override
  Widget build(var context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
