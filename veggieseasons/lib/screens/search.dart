// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/widgets/veggie_headline.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({this.restorationId, Key? key}) : super(key: key);

  final String? restorationId;

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with RestorationMixin {
  final controller = RestorableTextEditingController();
  final focusNode = FocusNode();
  String? terms;

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(controller, 'text');
    controller.addListener(_onTextChanged);
    terms = controller.value.text;
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() => terms = controller.value.text);
  }

  Widget _createSearchBox({bool focus = true}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CupertinoSearchTextField(
        controller: controller.value,
        focusNode: focus ? focusNode : null,
      ),
    );
  }

  Widget _buildSearchResults(List<Veggie> veggies) {
    if (veggies.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'No veggies matching your search terms were found.',
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
        ),
      );
    }

    return ListView.builder(
      restorationId: 'list',
      itemCount: veggies.length + 1,
      itemBuilder: (context, i) {
        if (i == 0) {
          return Visibility(
            // This invisible and otherwise unnecessary search box is used to
            // pad the list entries downward, so none will be underneath the
            // real search box when the list is at its top scroll position.
            child: _createSearchBox(focus: false),
            visible: false,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
            child: VeggieHeadline(veggies[i - 1]),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppState>(context);

    return UnmanagedRestorationScope(
      bucket: bucket,
      child: CupertinoTabView(
        restorationScopeId: 'tabview',
        builder: (context) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarBrightness: MediaQuery.platformBrightnessOf(context),
            ),
            child: SafeArea(
              bottom: false,
              child: Stack(
                children: [
                  _buildSearchResults(model.searchVeggies(terms)),
                  _createSearchBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
