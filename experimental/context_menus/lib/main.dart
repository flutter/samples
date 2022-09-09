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
import 'reordered_buttons_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Validation Sandbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)>{
        '/': (BuildContext context) => const MyHomePage(),
        AnywherePage.route: (BuildContext context) => AnywherePage(),
        CrazyButtonsPage.route: (BuildContext context) => CrazyButtonsPage(),
        ReorderedButtonsPage.route: (BuildContext context) => ReorderedButtonsPage(),
        EmailButtonPage.route: (BuildContext context) => EmailButtonPage(),
        ImagePage.route: (BuildContext context) => ImagePage(),
        FieldTypesPage.route: (BuildContext context) => FieldTypesPage(),
        FullPage.route: (BuildContext context) => FullPage(),
        ModifiedActionPage.route: (BuildContext context) => ModifiedActionPage(),
        GlobalSelectionPage.route: (BuildContext context) => GlobalSelectionPage(),
        DefaultValuesPage.route: (BuildContext context) => DefaultValuesPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContextualMenu Demos'),
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
            route: EmailButtonPage.route,
            title: EmailButtonPage.title,
            subtitle: EmailButtonPage.subtitle,
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
          MyListItem(
            route: GlobalSelectionPage.route,
            title: GlobalSelectionPage.title,
            subtitle: GlobalSelectionPage.subtitle,
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
