// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'src/autofill.dart';
import 'src/form_widgets.dart';
import 'src/http/mock_client.dart';
import 'src/sign_in_http.dart';
import 'src/validation.dart';

void main() {
  setupWindow();
  runApp(const FormApp());
}

const double windowWidth = 480;
const double windowHeight = 854;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Form Samples');
    setWindowMinSize(const Size(windowWidth, windowHeight));
    setWindowMaxSize(const Size(windowWidth, windowHeight));
    getCurrentScreen().then((screen) {
      setWindowFrame(Rect.fromCenter(
        center: screen!.frame.center,
        width: windowWidth,
        height: windowHeight,
      ));
    });
  }
}

final demos = [
  Demo(
    name: 'Sign in with HTTP',
    route: '/signin_http',
    builder: (context) => SignInHttpDemo(
      // This sample uses a mock HTTP client.
      httpClient: mockClient,
    ),
  ),
  Demo(
    name: 'Autofill',
    route: '/autofill',
    builder: (context) => const AutofillDemo(),
  ),
  Demo(
    name: 'Form widgets',
    route: '/form_widgets',
    builder: (context) => const FormWidgetsDemo(),
  ),
  Demo(
    name: 'Validation',
    route: '/validation',
    builder: (context) => const FormValidationDemo(),
  ),
];

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Samples',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: Map.fromEntries(demos.map((d) => MapEntry(d.route, d.builder))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Samples'),
      ),
      body: ListView(
        children: [...demos.map((d) => DemoTile(demo: d))],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo? demo;

  const DemoTile({this.demo, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo!.name),
      onTap: () {
        Navigator.pushNamed(context, demo!.route);
      },
    );
  }
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({required this.name, required this.route, required this.builder});
}
