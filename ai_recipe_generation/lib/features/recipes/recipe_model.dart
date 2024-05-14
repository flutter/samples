import 'dart:convert';

import 'package:ai_recipe_generation/util/json_parsing.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class Recipe {
  Recipe({
    required this.title,
    required this.id,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.cuisine,
    required this.allergens,
    required this.servings,
    required this.nutritionInformation,
    this.rating = -1,
  });

  final String id;
  final String title;
  final String description;
  final List<String> ingredients;
  final List<String> instructions;
  final String cuisine;
  final List<String> allergens;
  final String servings;
  final Map<String, dynamic> nutritionInformation;
  int rating;

  factory Recipe.fromGeneratedContent(GenerateContentResponse content) {
    /// failures should be handled when the response is received
    assert(content.text != null);

    final validJson = cleanJson(content.text!);
    final json = jsonDecode(validJson);

    if (json
        case {
          "ingredients": List<dynamic> ingredients,
          "instructions": List<dynamic> instructions,
          "title": String title,
          "id": String id,
          "cuisine": String cuisine,
          "description": String description,
          "servings": String servings,
          "nutritionInformation": Map<String, dynamic> nutritionInformation,
          "allergens": List<dynamic> allergens,
        }) {
      return Recipe(
          id: id,
          title: title,
          ingredients: ingredients.map((i) => i.toString()).toList(),
          instructions: instructions.map((i) => i.toString()).toList(),
          nutritionInformation: nutritionInformation,
          allergens: allergens.map((i) => i.toString()).toList(),
          cuisine: cuisine,
          servings: servings,
          description: description);
    }

    throw JsonUnsupportedObjectError(json);
  }

  Map<String, Object?> toFirestore() {
    return {
      'id': id,
      'title': title,
      'instructions': instructions,
      'ingredients': ingredients,
      'cuisine': cuisine,
      'rating': rating,
      'allergens': allergens,
      'nutritionInformation': nutritionInformation,
      'servings': servings,
      'description': description,
    };
  }

  factory Recipe.fromFirestore(Map<String, Object?> data) {
    if (data
        case {
          "ingredients": List<dynamic> ingredients,
          "instructions": List<dynamic> instructions,
          "title": String title,
          "id": String id,
          "cuisine": String cuisine,
          "description": String description,
          "servings": String servings,
          "nutritionInformation": Map<String, dynamic> nutritionInformation,
          "allergens": List<dynamic> allergens,
          "rating": int rating
        }) {
      return Recipe(
        id: id,
        title: title,
        ingredients: ingredients.map((i) => i.toString()).toList(),
        instructions: instructions.map((i) => i.toString()).toList(),
        nutritionInformation: nutritionInformation,
        allergens: allergens.map((i) => i.toString()).toList(),
        cuisine: cuisine,
        servings: servings,
        description: description,
        rating: rating,
      );
    }

    throw "Malformed Firestore data";
  }
}
