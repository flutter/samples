import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'anywhere_page.dart';
import 'crazy_buttons_page.dart';
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
  debugDefaultTargetPlatformOverride = TargetPlatform.macOS;
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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Context Menu Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: defaultTargetPlatform,
      ),
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)>{
        '/': (BuildContext context) =>
            MyHomePage(onChangedPlatform: onChangedPlatform),
        AnywherePage.route: (BuildContext context) =>
            AnywherePage(onChangedPlatform: onChangedPlatform),
        CrazyButtonsPage.route: (BuildContext context) =>
            CrazyButtonsPage(onChangedPlatform: onChangedPlatform),
        ReorderedButtonsPage.route: (BuildContext context) =>
            ReorderedButtonsPage(onChangedPlatform: onChangedPlatform),
        EmailButtonPage.route: (BuildContext context) =>
            EmailButtonPage(onChangedPlatform: onChangedPlatform),
        ImagePage.route: (BuildContext context) =>
            ImagePage(onChangedPlatform: onChangedPlatform),
        FieldTypesPage.route: (BuildContext context) =>
            FieldTypesPage(onChangedPlatform: onChangedPlatform),
        FullPage.route: (BuildContext context) =>
            FullPage(onChangedPlatform: onChangedPlatform),
        ModifiedActionPage.route: (BuildContext context) =>
            ModifiedActionPage(onChangedPlatform: onChangedPlatform),
        GlobalSelectionPage.route: (BuildContext context) =>
            GlobalSelectionPage(onChangedPlatform: onChangedPlatform),
        DefaultValuesPage.route: (BuildContext context) =>
            DefaultValuesPage(onChangedPlatform: onChangedPlatform),
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
          MyListItem(
            route: AnywherePage.route,
            title: AnywherePage.title,
            subtitle: AnywherePage.subtitle,
          ),
          MyListItem(
            route: GlobalSelectionPage.route,
            title: GlobalSelectionPage.title,
            subtitle: GlobalSelectionPage.subtitle,
          ),
          MyListItem(
            route: ImagePage.route,
            title: ImagePage.title,
            subtitle: ImagePage.subtitle,
          ),
          MyListItem(
            route: CrazyButtonsPage.route,
            title: CrazyButtonsPage.title,
            subtitle: CrazyButtonsPage.subtitle,
          ),
          MyListItem(
            route: EmailButtonPage.route,
            title: EmailButtonPage.title,
            subtitle: EmailButtonPage.subtitle,
          ),
          MyListItem(
            route: ReorderedButtonsPage.route,
            title: ReorderedButtonsPage.title,
            subtitle: ReorderedButtonsPage.subtitle,
          ),
          MyListItem(
            route: ModifiedActionPage.route,
            title: ModifiedActionPage.title,
            subtitle: ModifiedActionPage.subtitle,
          ),
          MyListItem(
            route: FieldTypesPage.route,
            title: FieldTypesPage.title,
            subtitle: FieldTypesPage.subtitle,
          ),
          MyListItem(
            route: DefaultValuesPage.route,
            title: DefaultValuesPage.title,
            subtitle: DefaultValuesPage.subtitle,
          ),
          MyListItem(
            route: FullPage.route,
            title: FullPage.title,
            subtitle: FullPage.subtitle,
          ),
        ],
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem({
    Key? key,
    required this.route,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

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
