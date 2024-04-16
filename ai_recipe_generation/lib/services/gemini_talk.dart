import 'package:google_generative_ai/google_generative_ai.dart';

import '../features/prompt/prompt_model.dart';

/// This code is for visual purposes only. I never actually use it when the app is running.

const formatting = '''
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

class GenerativeAIService {
  static Future<GenerateContentResponse> generateContent(
    GenerativeModel model,
    PromptData prompt,
  ) async {
    final imagesParts = [];
    for (var f in prompt.images) {
      final bytes = await (f.readAsBytes());
      imagesParts.add(DataPart('image/jpeg', bytes));
    }

    return await model.generateContent(
      [
        Content.multi([
          TextPart('''
You are a Cat who's a chef that travels around the world a lot, and your travels inspire recipes.
          
Recommend a recipe for me based on the provided image.
The recipe should only contain real, edible ingredients.
If the image or images attached don't contain any food items, respond to say that you cannot recommend a recipe with inedible ingredients.
Adhere to food safety and handling best practices like ensuring that poultry is fully cooked.

I'm in the mood for the following types of cuisine: ${prompt.cuisines},

I have the following dietary restrictions: ${prompt.selectedDietaryRestrictions}

Optionally also include the following ingredients: ${prompt.ingredients}

After providing the recipe, explain creatively why the recipe is good based on only the ingredients used in the recipe.  Tell a short story of a travel experience that inspired the recipe.
List out any ingredients that are potential allergens.
Provide a summary of how many people the recipe will serve and the the nutritional information per serving.
'''),
          for (var text in prompt.additionalTextInputs) TextPart(text),
          TextPart(formatting),
          ...imagesParts,
        ])
      ],
    );
  }
}
