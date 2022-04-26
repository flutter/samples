// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:linting_tool/layout/adaptive.dart';
import 'package:linting_tool/model/editing_controller.dart';
import 'package:linting_tool/model/profiles_store.dart';
import 'package:linting_tool/pages/rules_page.dart';
import 'package:linting_tool/theme/colors.dart';
import 'package:provider/provider.dart';

class SavedLintsPage extends StatelessWidget {
  const SavedLintsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfilesStore>(
      builder: (context, profilesStore, child) {
        if (profilesStore.isLoading) {
          return const CircularProgressIndicator.adaptive();
        }

        if (!profilesStore.isLoading) {
          if (profilesStore.savedProfiles.isNotEmpty) {
            final isDesktop = isDisplayLarge(context);
            final isTablet = isDisplayMedium(context);
            final startPadding = isTablet
                ? 60.0
                : isDesktop
                    ? 120.0
                    : 16.0;
            final endPadding = isTablet
                ? 60.0
                : isDesktop
                    ? 120.0
                    : 16.0;

            return ListView.separated(
              padding: EdgeInsetsDirectional.only(
                start: startPadding,
                end: endPadding,
                top: isDesktop ? 28 : 16,
                bottom: isDesktop ? kToolbarHeight : 16,
              ),
              itemCount: profilesStore.savedProfiles.length,
              cacheExtent: 5,
              itemBuilder: (itemBuilderContext, index) {
                var profile = profilesStore.savedProfiles[index];
                return ListTile(
                  title: Text(
                    profile.name,
                  ),
                  tileColor: AppColors.white50,
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeNotifierProvider(
                          create: (context) => EditingController(),
                          child: RulesPage(selectedProfileIndex: index),
                        ),
                      ),
                    );
                  },
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangeNotifierProvider(
                                create: (context) => EditingController(
                                  isEditing: true,
                                ),
                                child: RulesPage(selectedProfileIndex: index),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.more_vert),
                        onSelected: (value) async {
                          switch (value) {
                            case 'Export file':
                              // TODO(abd99): Add option to select formatting style.

                              var saved = await profilesStore
                                  .exportProfileFile(profile);

                              if (!saved) {
                                _showSnackBar(
                                  context,
                                  profilesStore.error ?? 'Failed to save file.',
                                );
                              }

                              break;
                            case 'Delete':
                              await profilesStore.deleteProfile(profile);
                              break;
                            default:
                          }
                        },
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem(
                              child: Text('Export file'),
                              value: 'Export file',
                            ),
                            const PopupMenuItem(
                              child: Text('Delete'),
                              value: 'Delete',
                            ),
                          ];
                        },
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 4),
            );
          }
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(profilesStore.error ?? 'No saved profiles found.'),
            const SizedBox(
              height: 16.0,
            ),
            IconButton(
              onPressed: () => profilesStore.fetchSavedProfiles(),
              icon: const Icon(Icons.refresh),
            ),
          ],
        );
      },
    );
  }

  void _showSnackBar(BuildContext context, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(data),
      ),
    );
  }
}
