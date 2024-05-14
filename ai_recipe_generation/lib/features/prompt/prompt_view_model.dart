import 'package:ai_recipe_generation/services/gemini.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image_picker/image_picker.dart';

import '../../services/firestore.dart';
import '../../util/filter_chip_enums.dart';
import '../recipes/recipe_model.dart';
import 'prompt_model.dart';

class PromptViewModel extends ChangeNotifier {
  PromptViewModel({
    required this.multiModalModel,
    required this.textModel,
  });

  final GenerativeModel multiModalModel;
  final GenerativeModel textModel;
  bool loadingNewRecipe = false;

  PromptData userPrompt = PromptData.empty();
  TextEditingController promptTextController = TextEditingController();

  String badImageFailure =
      "The recipe request either does not contain images, or does not contain images of food items. I cannot recommend a recipe.";

  Recipe? recipe;
  String? _geminiFailureResponse;
  String? get geminiFailureResponse => _geminiFailureResponse;
  set geminiFailureResponse(String? value) {
    _geminiFailureResponse = value;
    notifyListeners();
  }

  void notify() => notifyListeners();

  void addImage(XFile image) {
    userPrompt.images.insert(0, image);
    notifyListeners();
  }

  void addAdditionalPromptContext(String text) {
    final existingInputs = userPrompt.additionalTextInputs;
    userPrompt.copyWith(additionalTextInputs: [...existingInputs, text]);
  }

  void removeImage(XFile image) {
    userPrompt.images.removeWhere((el) => el.path == image.path);
    notifyListeners();
  }

  void resetPrompt() {
    userPrompt = PromptData.empty();
    notifyListeners();
  }

  // Creates an ephemeral prompt with additional text that the user shouldn't be
  // concerned with to send to Gemini, such as formatting.
  PromptData buildPrompt() {
    return PromptData(
      images: userPrompt.images,
      textInput: mainPrompt,
      basicIngredients: userPrompt.selectedBasicIngredients,
      cuisines: userPrompt.selectedCuisines,
      dietaryRestrictions: userPrompt.selectedDietaryRestrictions,
      additionalTextInputs: [format],
    );
  }

  Future<void> submitPrompt() async {
    loadingNewRecipe = true;
    notifyListeners();
    // Create an ephemeral PromptData, preserving the user prompt data without
    // adding the additional context to it.
    var model = userPrompt.images.isEmpty ? textModel : multiModalModel;
    final prompt = buildPrompt();

    try {
      final content = await GeminiService.generateContent(model, prompt);

      // handle no image or image of not-food
      if (content.text != null && content.text!.contains(badImageFailure)) {
        geminiFailureResponse = badImageFailure;
      } else {
        recipe = Recipe.fromGeneratedContent(content);
      }
    } catch (error) {
      geminiFailureResponse = 'Failed to reach Gemini. \n\n$error';
      if (kDebugMode) {
        print(error);
      }
      loadingNewRecipe = false;
    }

    loadingNewRecipe = false;
    resetPrompt();
    notifyListeners();
  }

  void saveRecipe() {
    FirestoreService.saveRecipe(recipe!);
  }

  void addBasicIngredients(Set<BasicIngredientsFilter> ingredients) {
    userPrompt.selectedBasicIngredients.addAll(ingredients);
    notifyListeners();
  }

  void addCategoryFilters(Set<CuisineFilter> categories) {
    userPrompt.selectedCuisines.addAll(categories);
    notifyListeners();
  }

  void addDietaryRestrictionFilter(
      Set<DietaryRestrictionsFilter> restrictions) {
    userPrompt.selectedDietaryRestrictions.addAll(restrictions);
    notifyListeners();
  }

  String get mainPrompt {
    return '''
You are a Cat who's a chef that travels around the world a lot, and your travels inspire recipes.

Recommend a recipe for me based on the provided image.
The recipe should only contain real, edible ingredients.
If there are no images attached, or if the image does not contain food items, respond exactly with: $badImageFailure

Adhere to food safety and handling best practices like ensuring that poultry is fully cooked.
I'm in the mood for the following types of cuisine: ${userPrompt.cuisines},
I have the following dietary restrictions: ${userPrompt.dietaryRestrictions}
Optionally also include the following ingredients: ${userPrompt.ingredients}
Do not repeat any ingredients.

After providing the recipe, add an descriptions that creatively explains why the recipe is good based on only the ingredients used in the recipe.  Tell a short story of a travel experience that inspired the recipe.
List out any ingredients that are potential allergens.
Provide a summary of how many people the recipe will serve and the the nutritional information per serving.

${promptTextController.text.isNotEmpty ? promptTextController.text : ''}
''';
  }

  final String format = '''
Return the recipe as valid JSON using the following structure:
{
  "id": \$uniqueId,
  "title": \$recipeTitle,
  "ingredients": \$ingredients,
  "description": \$description,
  "instructions": \$instructions,
  "cuisine": \$cuisineType,
  "allergens": \$allergens,
  "servings": \$servings,
  "nutritionInformation": {
    "calories": "\$calories",
    "fat": "\$fat",
    "carbohydrates": "\$carbohydrates",
    "protein": "\$protein",
  },
}
  
uniqueId should be unique and of type String. 
title, description, cuisine, allergens, and servings should be of String type. 
ingredients and instructions should be of type List<String>.
nutritionInformation should be of type Map<String, String>.
''';
}
