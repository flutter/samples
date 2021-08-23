// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:linting_tool/layout/adaptive.dart';
import 'package:linting_tool/model/rules_store.dart';
import 'package:linting_tool/pages/default_rules_page.dart';
import 'package:linting_tool/theme/colors.dart';
import 'package:provider/provider.dart';

class DefaultLintsPage extends StatelessWidget {
  const DefaultLintsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RuleStore>(
      builder: (context, rulesStore, child) {
        if (rulesStore.isLoading) {
          return const CircularProgressIndicator.adaptive();
        }

        if (rulesStore.defaultProfiles.isNotEmpty) {
          var defaultSets = rulesStore.defaultProfiles;
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
            cacheExtent: 5,
            itemCount: defaultSets.length,
            itemBuilder: (context, index) {
              var profile = rulesStore.defaultProfiles[index];
              return ListTile(
                title: Text(
                  profile.name,
                ),
                tileColor: AppColors.white50,
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DefaultRulesPage(profile: profile),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 4),
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(rulesStore.error ?? 'Failed to load rules.'),
            const SizedBox(
              height: 16.0,
            ),
            IconButton(
              onPressed: () => rulesStore.fetchRules(),
              icon: const Icon(Icons.refresh),
            ),
          ],
        );
      },
    );
  }
}
