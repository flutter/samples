// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:linting_tool/model/editing_controller.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/theme/app_theme.dart';
import 'package:linting_tool/theme/colors.dart';
import 'package:provider/provider.dart';

class SavedRuleTile extends StatefulWidget {
  final Rule rule;

  const SavedRuleTile({
    required this.rule,
    super.key,
  });

  @override
  State<SavedRuleTile> createState() => _SavedRuleTileState();
}

class _SavedRuleTileState extends State<SavedRuleTile> {
  var isExpanded = false;
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final rule = widget.rule;
    final incompatibleString =
        rule.incompatible.isNotEmpty ? rule.incompatible.join(', ') : 'none';
    final setsString = rule.sets.isNotEmpty ? rule.sets.join(', ') : 'none';

    return Consumer<EditingController>(
      builder: (context, editingController, child) {
        return ExpansionTile(
          collapsedBackgroundColor: AppColors.white50,
          leading: editingController.isEditing
              ? Checkbox(
                  value: isSelected &&
                      editingController.selectedRules.contains(rule),
                  onChanged: (value) {
                    if (value!) {
                      editingController.selectRule(rule);
                      setState(() {
                        isSelected = value;
                      });
                    } else {
                      editingController.deselectRule(rule);
                      setState(() {
                        isSelected = value;
                      });
                    }
                  },
                )
              : null,
          title: Text(
            rule.name,
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            rule.description,
            style: textTheme.bodySmall!,
          ),
          initiallyExpanded: isExpanded,
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          expandedAlignment: Alignment.centerLeft,
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          backgroundColor: AppColors.white50,
          maintainState: true,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Group:',
                    style: textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: ' ${rule.group}',
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'State:',
                    style: textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: ' ${rule.state}',
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Incompatible:',
                    style: textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: ' $incompatibleString',
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Sets:',
                    style: textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: ' $setsString',
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 16.0,
            ),
            MarkdownBody(
              data: rule.details,
              selectable: true,
              styleSheet: AppTheme.buildMarkDownTheme(theme),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        );
      },
    );
  }
}
