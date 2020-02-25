// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/rally/colors.dart';

class TabWithSidebar extends StatelessWidget {
  const TabWithSidebar({
    Key key,
    @required this.mainView,
    @required this.sidebarItems,
  }) : super(key: key);

  final Widget mainView;
  final List<Widget> sidebarItems;

  @override
  Widget build(BuildContext context) {
    if (isDisplayDesktop(context)) {
      return Row(
        children: [
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: mainView,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: RallyColors.inputBackground,
              padding: EdgeInsetsDirectional.only(start: 24),
              height: double.infinity,
              alignment: AlignmentDirectional.centerStart,
              child: ListView(
                shrinkWrap: true,
                children: sidebarItems,
              ),
            ),
          ),
        ],
      );
    } else {
      return SingleChildScrollView(child: mainView);
    }
  }
}

class SidebarItem extends StatelessWidget {
  const SidebarItem({Key key, this.value, this.title}) : super(key: key);

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          title,
          style: textTheme.bodyText2.copyWith(
            fontSize: 16,
            color: RallyColors.gray60,
          ),
        ),
        SizedBox(height: 8),
        Text(
          value,
          style: textTheme.bodyText1.copyWith(fontSize: 20),
        ),
        SizedBox(height: 8),
        Container(
          color: RallyColors.primaryBackground,
          height: 1,
        ),
      ],
    );
  }
}
