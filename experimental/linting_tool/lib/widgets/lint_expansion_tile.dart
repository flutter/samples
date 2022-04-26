// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/profiles_store.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/theme/app_theme.dart';
import 'package:linting_tool/theme/colors.dart';
import 'package:provider/provider.dart';

class LintExpansionTile extends StatefulWidget {
  final Rule rule;
  const LintExpansionTile({
    required this.rule,
    Key? key,
  }) : super(key: key);

  @override
  _LintExpansionTileState createState() => _LintExpansionTileState();
}

class _LintExpansionTileState extends State<LintExpansionTile> {
  var isExpanded = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    final rule = widget.rule;
    final incompatibleString =
        rule.incompatible.isNotEmpty ? rule.incompatible.join(', ') : 'none';
    final setsString = rule.sets.isNotEmpty ? rule.sets.join(', ') : 'none';
    return ExpansionTile(
      collapsedBackgroundColor: AppColors.white50,
      title: Text(
        rule.name,
        style: textTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        rule.description,
        style: textTheme.caption!,
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
                style: textTheme.subtitle2,
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
                text: 'Maturity:',
                style: textTheme.subtitle2,
              ),
              TextSpan(
                text: ' ${rule.maturity}',
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
                style: textTheme.subtitle2,
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
                style: textTheme.subtitle2,
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
          height: 8.0,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            child: const Text('Add to profile'),
            onPressed: () async {
              ProfileType? destinationProfileType =
                  await showDialog<ProfileType>(
                context: context,
                builder: (context) {
                  return const _ProfileTypeDialog();
                },
              );
              if (destinationProfileType == ProfileType.newProfile) {
                await showDialog<String>(
                  context: context,
                  builder: (context) {
                    return _NewProfileDialog(rule: rule);
                  },
                );
              } else if (destinationProfileType ==
                  ProfileType.existingProfile) {
                await showDialog<String>(
                  context: context,
                  builder: (context) {
                    return _ExistingProfileDialog(rule: rule);
                  },
                );
              }
            },
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}

enum ProfileType {
  newProfile,
  existingProfile,
}

class _ProfileTypeDialog extends StatelessWidget {
  const _ProfileTypeDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profilesStore = context.watch<ProfilesStore>();

    return AlertDialog(
      actionsPadding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      title: const Text('Select Profile Type'),
      actions: [
        if (profilesStore.savedProfiles.isNotEmpty)
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, ProfileType.existingProfile);
            },
            child: const Text('Existing'),
          ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, ProfileType.newProfile);
          },
          child: const Text('New'),
        ),
      ],
    );
  }
}

class _NewProfileDialog extends StatelessWidget {
  final Rule rule;
  const _NewProfileDialog({
    required this.rule,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = '';
    final _formKey = GlobalKey<FormState>();

    return AlertDialog(
      title: const Text('Create new lint profile'),
      content: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Profile Name'),
            TextFormField(
              onChanged: (value) {
                name = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name cannot be empty.';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actionsPadding: const EdgeInsets.all(16.0),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              var newProfile = RulesProfile(
                name: name,
                rules: [rule],
              );
              await Provider.of<ProfilesStore>(context, listen: false)
                  .addToNewProfile(newProfile);
              Navigator.pop(context);
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class _ExistingProfileDialog extends StatelessWidget {
  const _ExistingProfileDialog({
    Key? key,
    required this.rule,
  }) : super(key: key);

  final Rule rule;

  @override
  Widget build(BuildContext context) {
    var profilesStore = Provider.of<ProfilesStore>(context);
    var savedProfiles = profilesStore.savedProfiles;
    return AlertDialog(
      title: const Text('Select a lint profile'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          savedProfiles.length,
          (index) => ListTile(
            title: Text(savedProfiles[index].name),
            onTap: () async {
              await profilesStore.addToExistingProfile(
                  savedProfiles[index], rule);
              Navigator.pop(context);
            },
          ),
        ),
      ),
      actionsPadding: const EdgeInsets.all(16.0),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
