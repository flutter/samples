// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/crane/colors.dart';

const textFieldHeight = 60.0;
const appPaddingLarge = 120.0;
const appPaddingSmall = 24.0;

class HeaderFormField {
  final IconData iconData;
  final String title;
  final TextEditingController textController;

  const HeaderFormField({this.iconData, this.title, this.textController});
}

class HeaderForm extends StatelessWidget {
  final List<HeaderFormField> fields;

  const HeaderForm({Key key, this.fields}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final isSmallDesktop = isDisplaySmallDesktop(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            isDesktop && !isSmallDesktop ? appPaddingLarge : appPaddingSmall,
      ),
      child: isDesktop
          ? LayoutBuilder(builder: (context, constraints) {
              var crossAxisCount = isSmallDesktop ? 2 : 4;
              if (fields.length < crossAxisCount) {
                crossAxisCount = fields.length;
              }
              final itemWidth = constraints.maxWidth / crossAxisCount;
              return GridView.count(
                crossAxisCount: crossAxisCount,
                childAspectRatio: itemWidth / textFieldHeight,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (final field in fields)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 16),
                      child: _HeaderTextField(field: field),
                    )
                ],
              );
            })
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final field in fields)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: _HeaderTextField(field: field),
                  )
              ],
            ),
    );
  }
}

class _HeaderTextField extends StatelessWidget {
  final HeaderFormField field;

  _HeaderTextField({this.field});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: field.textController,
      cursorColor: Theme.of(context).colorScheme.secondary,
      style:
          Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
      onTap: () {},
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: EdgeInsets.all(16),
        fillColor: cranePurple700,
        filled: true,
        hintText: field.title,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(
          field.iconData,
          size: 24,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
