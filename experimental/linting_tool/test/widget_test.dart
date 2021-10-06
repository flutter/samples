// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:linting_tool/app.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/profiles_store.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/model/rules_store.dart';
import 'package:linting_tool/pages/default_lints_page.dart';
import 'package:linting_tool/pages/home_page.dart';
import 'package:linting_tool/pages/saved_lints_page.dart';
import 'package:linting_tool/theme/app_theme.dart';
import 'package:linting_tool/widgets/adaptive_nav.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'widget_test.mocks.dart';

late MockClient _mockClient;

class _TestApp extends StatelessWidget {
  const _TestApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RuleStore>(
          create: (context) => RuleStore(_mockClient),
        ),
        ChangeNotifierProvider<ProfilesStore>(
          create: (context) => ProfilesStore(_mockClient),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Linting Tool',
        initialRoute: LintingTool.homeRoute,
        theme: AppTheme.buildReplyLightTheme(context),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case LintingTool.homeRoute:
              return MaterialPageRoute<void>(
                builder: (context) => const AdaptiveNav(),
                settings: settings,
              );
          }
          return null;
        },
      ),
    );
  }
}

@GenerateMocks([http.Client])
void main() {
  setUp(() async {
    final tempDir = await Directory.systemTemp.createTemp();
    Hive.init(tempDir.path);
    Hive.registerAdapter(RuleAdapter());
    Hive.registerAdapter(RulesProfileAdapter());
    await Hive.openLazyBox<RulesProfile>('rules_profile');
    _mockClient = MockClient();
  });
  testWidgets('NavigationRail smoke test', (tester) async {
    var responseBody =
        '''[{"name": "always_use_package_imports","description": "Avoid relative imports for files in `lib/`.","group": "errors","maturity": "stable","incompatible": [],"sets": [],"details": "*DO* avoid relative imports for files in `lib/`.\n\nWhen mixing relative and absolute imports it's possible to create confusion\nwhere the same member gets imported in two different ways. One way to avoid\nthat is to ensure you consistently use absolute imports for files withing the\n`lib/` directory.\n\nThis is the opposite of 'prefer_relative_imports'.\nMight be used with 'avoid_relative_lib_imports' to avoid relative imports of\nfiles within `lib/` directory outside of it. (for example `test/`)\n\n**GOOD:**\n\n```dart\nimport 'package:foo/bar.dart';\n\nimport 'package:foo/baz.dart';\n\nimport 'package:foo/src/baz.dart';\n...\n```\n\n**BAD:**\n\n```dart\nimport 'baz.dart';\n\nimport 'src/bag.dart'\n\nimport '../lib/baz.dart';\n\n...\n```\n\n"}]''';

    when(_mockClient.get(Uri.parse(
            'https://dart-lang.github.io/linter//lints/machine/rules.json')))
        .thenAnswer(
      (_) async => http.Response(responseBody, 400),
    );

    await tester.pumpWidget(const _TestApp());

    expect(find.byType(HomePage), findsOneWidget);
    expect(find.byType(SavedLintsPage), findsNothing);
    await tester.tap(find.text('Saved Profiles'));
    await tester.pumpAndSettle();
    expect(find.byType(SavedLintsPage), findsOneWidget);

    expect(find.byType(DefaultLintsPage), findsNothing);
    await tester.tap(find.text('Default Profiles'));
    await tester.pumpAndSettle();
    expect(find.byType(DefaultLintsPage), findsOneWidget);

    expect(find.byType(HomePage), findsNothing);
    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();
    expect(find.byType(HomePage), findsOneWidget);
  });
}
