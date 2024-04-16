import 'package:cloud_firestore/cloud_firestore.dart';

import '../features/recipes/recipe_model.dart';

const recipePath = '/recipes';
final firestore = FirebaseFirestore.instance;

class FirestoreService {
  static Future<Null> saveRecipe(Recipe recipe) async {
    await firestore
        .collection(recipePath)
        .doc(recipe.id)
        .set(recipe.toFirestore());
  }

  static Future<Null> deleteRecipe(Recipe recipe) async {
    await firestore.doc("$recipePath/${recipe.id}").delete();
  }

  static Future<Null> updateRecipe(Recipe recipe) async {
    await firestore
        .doc("$recipePath/${recipe.id}")
        .update(recipe.toFirestore());
  }
}
