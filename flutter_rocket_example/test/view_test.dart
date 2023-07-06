import 'package:flutter_rocket_example/models/photo_model.dart';
import 'package:flutter_rocket_example/models/post_model.dart';
import 'package:flutter_rocket_example/models/todo.dart';
import 'package:flutter_rocket_example/models/user_model.dart';
import 'package:flutter_rocket_example/views/photo_view.dart';
import 'package:flutter_rocket_example/views/post_view.dart';
import 'package:flutter_rocket_example/views/todos_view.dart';
import 'package:flutter_rocket_example/views/user_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

import 'dummy_data.dart';
import 'fake_rocket_client.dart';

void main() {
  testWidgets('Test Post view (setup,refresh,update)', (tester) async {
    // Create request object
    RocketClientTest request = RocketClientTest(postData);
    Rocket.add(request);
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
        home: PostExample(
      title: 'test',
    )));
    // Check loading
    expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
    // After 1 second data loaded
    await tester.pump(const Duration(seconds: 1));
    expect(find.text(postData.first[postTitleField]), findsOneWidget);
    // Click to refresh for reload data
    await tester.tap(find.byIcon(Icons.data_usage));
    await tester.pump();
    // Check loading
    expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
    // After 1 second data loaded
    await tester.pump(const Duration(seconds: 1));
    expect(find.text(postData.first[postTitleField]), findsOneWidget);
    // Change first post title
    await tester.tap(find.byIcon(Icons.update).first);
    await tester.pump();
    // Title changed
    expect(find.text("This Title changed"), findsOneWidget);
  });

  testWidgets('Test user view (setup,refresh,update)', (tester) async {
    // Create request object
    RocketClientTest request = RocketClientTest(userData);
    Rocket.add(request);
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
        home: UserExample(
      title: 'test',
    )));
    // Check loading
    expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
    // After 2 second data loaded
    await tester.pump(const Duration(seconds: 1));
    expect(find.text("${userData.first[userNameField]}"), findsOneWidget);
    // Click to refresh for reload data
    await tester.tap(find.byIcon(Icons.get_app));
    await tester.pump();
    // Check loading
    expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
    // After 1 second data loaded
    await tester.pump(const Duration(seconds: 1));
    expect(find.text("${userData.first[userNameField]}"), findsOneWidget);
    // Change first username
    await tester.tap(find.byIcon(Icons.update));
    await tester.pump();
    // Name changed
    expect(find.text("Mohammed CHAHBOUN 💙"), findsOneWidget);
    // After 2 seconds data updated from API
    await tester.pump(const Duration(seconds: 2));
    expect(find.text("${userData.first[userNameField]}"), findsOneWidget);
  });

  testWidgets('Test Photo view setup', (tester) async {
    // Create request object
    RocketClientTest request = RocketClientTest(photoData);
    Rocket.add(request);
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
        home: PhotoExample(
      title: 'test',
    )));
    // Check loading
    expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
    // After 1 second data loaded
    await tester.pump(const Duration(seconds: 1));
    expect(find.text(photoData.first[photoTitleField]), findsOneWidget);
  });

  testWidgets('Test Todo view (setup,refresh,update)', (tester) async {
    // Create request object
    RocketClientTest request = RocketClientTest(todosData);
    Rocket.add(request);
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
        home: TodosExample(
      title: 'test',
    )));
    // Check loading
    expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
    // After 1 second data loaded
    await tester.pump(const Duration(seconds: 1));
    // Check todo title
    expect(find.text(todosData.first[todoTitleField]), findsOneWidget);
    final Finder checkBox = find.byType(Checkbox);
    Checkbox todoCheckBox = tester.firstWidget(checkBox);
    // check inital todo status
    expect(todoCheckBox.value, todosData.first[todoCompletedField]);
    await tester.tap(checkBox);
    await tester.pump();
    todoCheckBox = tester.firstWidget(checkBox);
    // check if todo status changed
    expect(todoCheckBox.value, !todosData.first[todoCompletedField]);
  });
}
