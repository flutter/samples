// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';
import 'package:veggieseasons/widgets/search_bar.dart';
import 'package:veggieseasons/widgets/veggie_headline.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  String _terms = '';

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() => _terms = _controller.text);
  }

  Widget _createSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        controller: _controller,
        focusNode: _focusNode,
      ),
    );
  }

  List<Widget> _generateVeggieRows(List<Veggie> veggies) {
    final cards = new List<Widget>();

    for (Veggie veggie in veggies) {
      cards.add(Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
        child: VeggieHeadline(veggie),
      ));
    }

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<AppState>(context, rebuildOnChange: true);

    return CupertinoTabView(
      builder: (context) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Styles.scaffoldBackground,
          ),
          child: SafeArea(
            child: Column(
              children: [
                _createSearchBox(),
                Expanded(
                  child: ListView(
                    children: _generateVeggieRows(model.searchVeggies(_terms)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
