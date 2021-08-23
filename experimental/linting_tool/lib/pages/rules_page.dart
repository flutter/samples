// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:linting_tool/layout/adaptive.dart';
import 'package:linting_tool/model/editing_controller.dart';
import 'package:linting_tool/model/profiles_store.dart';
import 'package:linting_tool/widgets/saved_rule_tile.dart';
import 'package:provider/provider.dart';

class RulesPage extends StatelessWidget {
  final int selectedProfileIndex;

  const RulesPage({
    required this.selectedProfileIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayLarge(context);
    final isTablet = isDisplayMedium(context);
    var textTheme = Theme.of(context).textTheme;
    final startPadding = isTablet
        ? 60.0
        : isDesktop
            ? 120.0
            : 16.0;
    final endPadding = isTablet
        ? 60.0
        : isDesktop
            ? 120.0
            : 4.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context
              .read<ProfilesStore>()
              .savedProfiles[selectedProfileIndex]
              .name,
          style: textTheme.subtitle2!.copyWith(
            color: textTheme.bodyText1!.color,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            label: const Text('Back'),
          ),
        ),
        leadingWidth: 160.0,
        toolbarHeight: 38.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),

      /// ContextMenuOverlay is required to show
      /// right-click context menus using ContextMenuRegion.
      body: ContextMenuOverlay(
        child: Consumer<ProfilesStore>(
          builder: (context, profilesStore, child) {
            var profile = profilesStore.savedProfiles[selectedProfileIndex];
            return profile.rules.isEmpty
                ? const Center(
                    child: Text('There are no rules added to the profile.'),
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsetsDirectional.only(
                            start: startPadding,
                            end: endPadding,
                            top: isDesktop ? 28 : 16,
                            bottom: isDesktop ? kToolbarHeight : 16,
                          ),
                          itemCount: profile.rules.length,
                          cacheExtent: 5,
                          itemBuilder: (context, index) {
                            /// Show righ-click context menu to delete rule.
                            return ContextMenuRegion(
                              contextMenu: GenericContextMenu(
                                buttonConfigs: [
                                  ContextMenuButtonConfig(
                                    'Remove rule from profile',
                                    onPressed: () {
                                      context
                                          .read<ProfilesStore>()
                                          .removeRuleFromProfile(
                                              profile, profile.rules[index]);
                                    },
                                  ),
                                ],
                              ),
                              child: SavedRuleTile(
                                rule: profile.rules[index],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 28),
                        child: Row(
                          children: [
                            Consumer<EditingController>(
                              builder: (context, editingController, child) {
                                var isEditing = editingController.isEditing;
                                return isEditing
                                    ? Column(
                                        children: [
                                          IconButton(
                                            icon: const Icon(Icons.done),
                                            onPressed: () {
                                              editingController.isEditing =
                                                  false;
                                            },
                                          ),
                                          if (editingController
                                              .selectedRules.isNotEmpty)
                                            IconButton(
                                              icon: const Icon(Icons.delete),
                                              onPressed: () {
                                                editingController
                                                    .deleteSelected(
                                                  profile,
                                                  profilesStore,
                                                );
                                              },
                                            ),
                                        ],
                                      )
                                    : IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {
                                          editingController.isEditing = true;
                                        },
                                      );
                              },
                            ),
                            SizedBox(
                                width: isTablet
                                    ? 30
                                    : isDesktop
                                        ? 60
                                        : 16),
                          ],
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
