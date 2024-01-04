import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'anywhere_page.dart';
import 'cascading_menu_page.dart';
import 'custom_buttons_page.dart';
import 'custom_menu_page.dart';
import 'default_values_page.dart';
import 'email_button_page.dart';
import 'field_types_page.dart';
import 'full_page.dart';
import 'global_selection_page.dart';
import 'image_page.dart';
import 'modified_action_page.dart';
import 'platform_selector.dart';
import 'reordered_buttons_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void onChangedPlatform(TargetPlatform platform) {
    setState(() {
      debugDefaultTargetPlatformOverride = platform;
    });
  }

  @override
  void initState() {
    super.initState();
    // On web, disable the browser's context menu everywhere so that the custom
    // Flutter-rendered context menu shows.
    if (kIsWeb) {
      BrowserContextMenu.disableContextMenu();
    }
  }

  @override
  void dispose() {
    if (kIsWeb) {
      BrowserContextMenu.enableContextMenu();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Context Menu Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: defaultTargetPlatform,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)>{
        '/': (context) => MyHomePage(onChangedPlatform: onChangedPlatform),
        AnywherePage.route: (context) =>
            AnywherePage(onChangedPlatform: onChangedPlatform),
        CustomButtonsPage.route: (context) =>
            CustomButtonsPage(onChangedPlatform: onChangedPlatform),
        CustomMenuPage.route: (context) =>
            CustomMenuPage(onChangedPlatform: onChangedPlatform),
        ReorderedButtonsPage.route: (context) =>
            ReorderedButtonsPage(onChangedPlatform: onChangedPlatform),
        EmailButtonPage.route: (context) =>
            EmailButtonPage(onChangedPlatform: onChangedPlatform),
        ImagePage.route: (context) =>
            ImagePage(onChangedPlatform: onChangedPlatform),
        FieldTypesPage.route: (context) =>
            FieldTypesPage(onChangedPlatform: onChangedPlatform),
        FullPage.route: (context) =>
            FullPage(onChangedPlatform: onChangedPlatform),
        ModifiedActionPage.route: (context) =>
            ModifiedActionPage(onChangedPlatform: onChangedPlatform),
        GlobalSelectionPage.route: (context) =>
            GlobalSelectionPage(onChangedPlatform: onChangedPlatform),
        DefaultValuesPage.route: (context) =>
            DefaultValuesPage(onChangedPlatform: onChangedPlatform),
        CascadingMenuPage.route: (context) =>
            CascadingMenuPage(onChangedPlatform: onChangedPlatform),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.onChangedPlatform,
  });

  final PlatformCallback onChangedPlatform;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context Menu Demos'),
        actions: <Widget>[
          PlatformSelector(
            onChangedPlatform: onChangedPlatform,
          ),
        ],
      ),
      body: ListView(
        children: const <Widget>[
          _MyListItem(
            route: AnywherePage.route,
            title: AnywherePage.title,
            subtitle: AnywherePage.subtitle,
          ),
          _MyListItem(
            route: GlobalSelectionPage.route,
            title: GlobalSelectionPage.title,
            subtitle: GlobalSelectionPage.subtitle,
          ),
          _MyListItem(
            route: ImagePage.route,
            title: ImagePage.title,
            subtitle: ImagePage.subtitle,
          ),
          _MyListItem(
            route: CustomButtonsPage.route,
            title: CustomButtonsPage.title,
            subtitle: CustomButtonsPage.subtitle,
          ),
          _MyListItem(
            route: CustomMenuPage.route,
            title: CustomMenuPage.title,
            subtitle: CustomMenuPage.subtitle,
          ),
          _MyListItem(
            route: EmailButtonPage.route,
            title: EmailButtonPage.title,
            subtitle: EmailButtonPage.subtitle,
          ),
          _MyListItem(
            route: ReorderedButtonsPage.route,
            title: ReorderedButtonsPage.title,
            subtitle: ReorderedButtonsPage.subtitle,
          ),
          _MyListItem(
            route: ModifiedActionPage.route,
            title: ModifiedActionPage.title,
            subtitle: ModifiedActionPage.subtitle,
          ),
          _MyListItem(
            route: FieldTypesPage.route,
            title: FieldTypesPage.title,
            subtitle: FieldTypesPage.subtitle,
          ),
          _MyListItem(
            route: DefaultValuesPage.route,
            title: DefaultValuesPage.title,
            subtitle: DefaultValuesPage.subtitle,
          ),
          _MyListItem(
            route: CascadingMenuPage.route,
            title: CascadingMenuPage.title,
            subtitle: CascadingMenuPage.subtitle,
          ),
          _MyListItem(
            route: FullPage.route,
            title: FullPage.title,
            subtitle: FullPage.subtitle,
          ),
        ],
      ),
    );
  }
}

class _MyListItem extends StatelessWidget {
  const _MyListItem({
    required this.route,
    required this.subtitle,
    required this.title,
  });

  final String route;
  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Card(
        margin: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
