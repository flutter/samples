import 'package:image_picker/image_picker.dart';

import '../../util/filter_chip_enums.dart';

class PromptData {
  PromptData({
    required this.images,
    required this.textInput,
    Set<BasicIngredientsFilter>? basicIngredients,
    Set<CuisineFilter>? cuisines,
    Set<DietaryRestrictionsFilter>? dietaryRestrictions,
    List<String>? additionalTextInputs,
  })  : additionalTextInputs = additionalTextInputs ?? [],
        selectedBasicIngredients = basicIngredients ?? {},
        selectedCuisines = cuisines ?? {},
        selectedDietaryRestrictions = dietaryRestrictions ?? {};

  PromptData.empty()
      : images = [],
        additionalTextInputs = [],
        selectedBasicIngredients = {},
        selectedCuisines = {},
        selectedDietaryRestrictions = {},
        textInput = '';

  String get cuisines {
    return selectedCuisines.map((catFilter) => catFilter.name).join(",");
  }

  String get ingredients {
    return selectedBasicIngredients
        .map((ingredient) => ingredient.name)
        .join(", ");
  }

  String get dietaryRestrictions {
    return selectedDietaryRestrictions
        .map((restriction) => restriction.name)
        .join(", ");
  }

  List<XFile> images;
  String textInput;
  List<String> additionalTextInputs;
  Set<BasicIngredientsFilter> selectedBasicIngredients;
  Set<CuisineFilter> selectedCuisines;
  Set<DietaryRestrictionsFilter> selectedDietaryRestrictions;

  PromptData copyWith({
    List<XFile>? images,
    String? textInput,
    List<String>? additionalTextInputs,
    Set<BasicIngredientsFilter>? basicIngredients,
    Set<CuisineFilter>? cuisineSelections,
    Set<DietaryRestrictionsFilter>? dietaryRestrictions,
  }) {
    return PromptData(
      images: images ?? this.images,
      textInput: textInput ?? this.textInput,
      additionalTextInputs: additionalTextInputs ?? this.additionalTextInputs,
      basicIngredients: basicIngredients ?? selectedBasicIngredients,
      cuisines: cuisineSelections ?? selectedCuisines,
      dietaryRestrictions: dietaryRestrictions ?? selectedDietaryRestrictions,
    );
  }
}
