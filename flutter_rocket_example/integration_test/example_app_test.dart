import 'package:flutter_rocket_example/main.dart' as app;
import 'package:flutter_rocket_example/models/photo_model.dart';
import 'package:flutter_rocket_example/models/post_model.dart';
import 'package:flutter_rocket_example/models/todo.dart';
import 'package:flutter_rocket_example/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/dummy_data.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end tests', () {
    testWidgets('Posts testing (setup,refresh,update)', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the 100 posts button exist.
      expect(find.text('100 Posts'), findsOneWidget);

      final Finder postButton = find.byKey(const Key('post'));

      // open posts screen
      await tester.tap(postButton);
      await tester.pumpAndSettle();
      expect(find.text(postData.first[postTitleField]), findsOneWidget);
      // Click to refresh for reload data
      await tester.tap(find.byIcon(Icons.data_usage).first);
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
    testWidgets('Users testing (setup,refresh,update)', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('10 Users'), findsOneWidget);

      final Finder userButton = find.byKey(const Key('user'));

      // open users screen
      await tester.tap(userButton);
      await tester.pumpAndSettle();
      expect(find.text(userData.first[userNameField]), findsOneWidget);
      // Click to refresh for reload data
      await tester.tap(find.byIcon(Icons.get_app));
      await tester.pump();
      // Check loading
      expect(find.bySubtype<CircularProgressIndicator>(), findsOneWidget);
      // After 1 second data loaded
      await tester.pump(const Duration(seconds: 1));
      expect(find.text(userData.first[userNameField]), findsOneWidget);
      // Change first user name
      await tester.tap(find.byIcon(Icons.update).first);
      await tester.pump();
      // Title changed
      expect(find.text("Mohammed CHAHBOUN 💙"), findsOneWidget);
    });
    testWidgets('Photos testing (setup,refresh,update)', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('5000 Photos'), findsOneWidget);
      final Finder photoButton = find.byKey(const Key('photo'));

      // open photos screen
      await tester.tap(photoButton);
      await tester.pumpAndSettle();
      expect(find.text(photoData.first[photoTitleField]), findsOneWidget);
    });
    testWidgets('Todo testing (setup,refresh,update)', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('200 Todos'), findsOneWidget);
      final Finder todosButton = find.byKey(const Key('todo'));

      // open photos screen
      await tester.tap(todosButton);
      await tester.pumpAndSettle();
      // Check todo title
      expect(find.text(todosData.first[todoTitleField]), findsOneWidget);
      Finder checkBox = find.byType(Checkbox).first;
      Checkbox todoCheckBox = tester.firstWidget(checkBox);
      // check inital todo status
      expect(todoCheckBox.value, todosData.first[todoCompletedField]);
      await tester.tap(checkBox);
      await tester.pump();
      checkBox = find.byType(Checkbox).first;
      todoCheckBox = tester.firstWidget(checkBox);
      // check if todo status changed
      expect(todoCheckBox.value, !todosData.first[todoCompletedField]);
    });
  });
}
