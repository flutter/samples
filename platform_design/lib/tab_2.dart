import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'utils.dart';

const tab2Title = 'News';
const tab2IosIcon = Icon(CupertinoIcons.news);
const _itemsLength = 20;

String _makeFakeNews(Random random) {
  final pair = generateWordPairs(random: random);
  final artist = capitalizePair(pair.first);

  switch (random.nextInt(9)) {
    case 0:
      return '$artist says ${nouns[random.nextInt(nouns.length)]}';
    case 1:
      return '$artist arrested due to ${pair.first}';
    case 2:
      return '$artist releases ${capitalizePair(pair.first)}';
    case 3:
      return '$artist talks about his ${nouns[random.nextInt(nouns.length)]}';
    case 4:
      return '$artist talks about her ${nouns[random.nextInt(nouns.length)]}';
    case 5:
      return '$artist talks about their ${nouns[random.nextInt(nouns.length)]}';
    case 6:
      return '$artist says their music is inspired by ${pair.first}';
    case 7:
      return '$artist says the world needs more ${nouns[random.nextInt(nouns.length)]}';
    case 7:
      return '$artist calls their band ${adjectives[random.nextInt(adjectives.length)]}';
    case 8:
      return '$artist finally ready to talk about ${nouns[random.nextInt(nouns.length)]}';
  }
}

class Tab2 extends StatefulWidget {
  const Tab2({ Key key }) : super(key: key);

  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  List<Color> colors;
  List<String> titles;
  List<String> contents;

  @override
  void initState() {
    final random = Random();
    colors = getRandomColors(_itemsLength);
    titles = List<String>.generate(
      _itemsLength,
      (int index) => _makeFakeNews(random),
    );
    contents = List<String>.generate(
      _itemsLength,
      (int index) => lorem(paragraphs: 1, words: 50),
    );
    super.initState();
  }

  Widget _listBuilder(BuildContext context, int index) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: colors[index],
                ),
                Padding(padding: EdgeInsets.only(left: 12)),
                Expanded(child: Text(titles[index])),
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listBuilder,
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: ListView.builder(
        itemBuilder: _listBuilder,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return _buildAndroid(context);
      case TargetPlatform.iOS:
        return _buildIos(context);
    }

    assert(false, 'Unexpected platform');
    return null;
  }
}
