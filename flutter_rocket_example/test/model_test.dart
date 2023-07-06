import 'package:flutter_rocket_example/models/photo_model.dart';
import 'package:flutter_rocket_example/models/post_model.dart';
import 'package:flutter_rocket_example/models/todos.dart';
import 'package:flutter_rocket_example/models/user_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'dummy_data.dart';

void main() {
  group('Test Post model (multi, fromJson, toJson, updateFields, modelState)',
      () {
    final post = Post();
    const String newTitle = "New title";
    test("Test Post model (multi, fromJson, toJson)", () {
      // Test setMulti, fromJson & toJson
      post.setMulti(postData);
      expect(post.all!.first.toJson(), postData.first);
    });
    test("Test Post model UpdateFields", () {
      // Test updateFields
      post.all!.first.updateFields(titleField: newTitle);
      expect(post.all!.first.toJson()[postTitleField], newTitle);
    });
  });
  group('Test Photo model (multi, fromJson, toJson, updateFields)', () {
    final photo = Photo();
    const String newTitle = "New title";
    test("Test Photo model (multi, fromJson, toJson)", () {
      // Test setMulti, fromJson & toJson
      photo.setMulti(photoData);
      expect(photo.all!.first.toJson(), photoData.first);
    });
    test("Test Photo model updateFields", () {
      // Test updateFields
      photo.all!.first.updateFields(titleField: newTitle);
      expect(photo.all!.first.toJson()[photoTitleField], newTitle);
    });
  });

  group('Test User model (multi, fromJson, toJson, updateFields)', () {
    final user = User();
    const String newTitle = "New username";
    test('Test User model (multi, fromJson, toJson)', () {
      // Test setMulti, fromJson & toJson
      user.setMulti(userData);
      expect(user.all!.first.toJson(), userData.first);
    });
    test('Test User model updateFields', () {
      // Test updateFields
      user.all!.first.updateFields(usernameField: newTitle);
      expect(user.all!.first.toJson()[userUsernameField], newTitle);
    });
  });

  group('Test Todo model (multi, fromJson, toJson, updateFields, modelState)',
      () {
    final todos = Todos();
    test("Test Todo model (multi, fromJson, toJson)", () {
      // Test setMulti, fromJson & toJson
      todos.setMulti(todosData);
      expect(todos.all!.first.toJson(), todosData.first);
    });
    test("Test Todo model UpdateFields", () {
      // Test updateFields
      todos.all!.first.updateFields(completedField: true);
      expect(todos.all!.first.toJson()[todosCompletedField], true);
    });
  });
}
