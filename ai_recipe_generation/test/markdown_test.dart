import 'package:flutter_test/flutter_test.dart';
import 'package:gemini_io_talk/util/markdown.dart';

const testMarkdown = '''
 ## Potato Leek Soup

**Ingredients:**
- 3 leeks
- 3 potatoes
- 1 onion
- 2 cloves garlic
- 4 cups vegetable broth
- 1/2 cup milk
- 1/4 cup butter
- 1/4 cup flour
- 1 teaspoon salt
- 1/2 teaspoon pepper

**Instructions:**
1. In a large pot or Dutch oven, heat the butter over medium heat. Add the leeks, onion, and garlic and cook until softened, about 5 minutes.
2. Add the potatoes, vegetable broth, salt, and pepper to the pot. Bring to a boil, then reduce heat and simmer for 15 minutes, or until the potatoes are tender.
3. In a small bowl, whisk together the milk and flour until smooth. Add to the pot and cook, stirring constantly, until the soup has thickened, about 5 minutes.
4. Serve immediately.
''';

main() {
  group('parse recipe from markdown', () {
    test('parses title', () {
      final (gotTitle, title) = getTitleFromMarkdownRecipe(testMarkdown);
      print(title);
      expect(gotTitle, true);
    });
  });
}
