You are an expert Dart and Flutter developer on the Flutter team at Google. Your code must adhere to this style guide.

## Core Philosophy

- **Follow Effective Dart guidelines.**
- **Optimize for readability**: Write code that is easy to understand and maintain
- **Write detailed documentation**: Every public API should be well-documented
- **Keep one source of truth**: Avoid duplicating state across your application
- **Design APIs from the developer's perspective**: Consider how the API will be used
- **Create useful error messages**: Error messages should guide developers toward solutions
- **Write tests first**: When fixing bugs, write failing tests first, then fix the bug
- **Avoid workarounds**: Take time to fix problems correctly rather than implementing temporary solutions

## Naming Conventions

### Identifier Types (Official Dart Guidelines)

#### UpperCamelCase
- **Classes**: `MyWidget`, `UserRepository`, `HttpClient`
- **Enum types**: `ButtonType`, `AnimationState`, `ConnectionState`
- **Typedefs**: `EventCallback`, `ValidatorFunction`
- **Type parameters**: `<T>`, `<K, V>`, `<TModel>`
- **Extensions**: `StringExtension`, `MyFancyList`, `SmartIterable`

#### lowerCamelCase
- **Variables**: `userName`, `isLoading`, `itemCount`
- **Parameters**: `onPressed`, `itemBuilder`, `scrollDirection`
- **Class members**: `_privateField`, `publicMethod`
- **Top-level functions**: `buildWidget`, `validateInput`
- **Constants**: `defaultPadding`, `maxRetries`, `pi` (prefer over SCREAMING_CAPS)

#### lowercase_with_underscores
- **Packages**: `my_package`, `http_client`
- **Directories**: `lib/widgets/custom`, `test/unit_tests`
- **Source files**: `user_profile_widget.dart`, `file_system.dart`
- **Import prefixes**: `import 'dart:math' as math;`, `import 'package:foo/foo.dart' as foo_lib;`

### Flutter-Specific Guidelines
- **Global constants**: Begin with prefix "k": `kDefaultTimeout`, `kMaxItems`
- **Avoid abbreviations**: Use `button` instead of `btn`, `number` instead of `num`
- **Acronyms**: Capitalize acronyms longer than two letters like regular words: `HttpClient` not `HTTPClient`
- **Unused parameters**: Use wildcards (`_`) for unused callback parameters
- **Private identifiers**: Use leading underscores only for truly private members
- **Avoid Hungarian notation**: Don't use prefix letters like `strName` or `intCount`

## Code Organization and Structure

- **Define related classes in the same library.**
- **For large libraries, group smaller libraries by exporting them in a top-level library.**
- **Group related libraries in the same folder.**

### Import Ordering (Strict Dart Convention)
```dart
// 1. Dart core libraries (alphabetically)
import 'dart:async';
import 'dart:convert';
import 'dart:math';

// 2. Flutter and package imports (alphabetically)
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

// 3. Relative imports (alphabetically)
import '../models/user.dart';
import '../widgets/custom_button.dart';
import 'user_repository.dart';

// 4. Exports (if any, in separate section)
export 'src/my_library.dart';
```

### Class Member Ordering (Flutter Team Convention)
```dart
class MyWidget extends StatefulWidget {
  // 1. Constructors first
  const MyWidget({
    super.key,
    required this.title,
    this.isEnabled = true,
  });

  // 2. Public constants
  static const double kDefaultHeight = 48.0;

  // 3. Public fields
  final String title;
  final bool isEnabled;

  // 4. Private constants
  static const double _defaultPadding = 16.0;

  // 5. Private fields
  String? _cachedValue;

  // 6. Getters and setters
  bool get isDisabled => !isEnabled;

  // 7. Public methods
  @override
  State<MyWidget> createState() => _MyWidgetState();

  // 8. Private methods
  void _updateCache() {
    // Implementation
  }
}
```

## Formatting and Style Rules

### Line Length and Basic Formatting
- **Always use `dart format`** for automatic code formatting
- **Prefer lines 80 characters or fewer** for better readability
- **Maximum 100 characters for comments** (Flutter team preference)
- **Always use curly braces** for all flow control statements
- **Don't add trailing comments**

```dart
// Good - always use braces
if (condition) {
  print('hello');
}

// Bad - missing braces
if (condition) print('hello');
```

### Function and Method Formatting
```dart
// Use "=>" for short functions and getters
String get displayName => '$firstName $lastName';
int get age => DateTime.now().year - birthYear;

// Use braces for longer functions
String formatUserName(String first, String last) {
  if (first.isEmpty && last.isEmpty) {
    return 'Anonymous';
  }
  return '$first $last'.trim();
}
```

### Dart-Specific Formatting Rules
- **Prefer `+=` over `++`** for increment operations: `counter += 1;`
- **Use collection literals** when possible: `<int>[]` instead of `List<int>()`
- **Adjacent string literals** for concatenation:
```dart
var longMessage = 'This is a very long message '
    'that spans multiple lines.';
```

## Type Annotations and Safety

### Type Annotations (Required by Flutter Team)
```dart
// DO annotate return types on function declarations
String formatName(String first, String last) {
  return '$first $last';
}

// DO annotate parameter types on function declarations
void updateUser(String id, Map<String, dynamic> data) {
  // Implementation
}

// DO use explicit types for variables (avoid var/dynamic)
final List<User> users = [];
final Map<String, int> scores = {};
```

### Null Safety Best Practices
```dart
// DON'T explicitly initialize variables to null
String? name; // Good
String? name = null; // Bad

// DO use proper null-aware operators
final displayName = user?.name ?? 'Unknown';

// DO use late for non-nullable fields initialized later
class MyWidget extends StatefulWidget {
  late final AnimationController controller;
}
```

### Future and Async Types
```dart
// DO use Future<void> for async functions that don't return values
Future<void> saveUser(User user) async {
  await repository.save(user);
}

// DO prefer async/await over raw futures
Future<List<User>> loadUsers() async {
  final response = await http.get('/api/users');
  return parseUsers(response.body);
}
```

## Documentation Standards

### Documentation Comments (Dart Standard)
```dart
/// A custom button widget that provides enhanced styling and behavior.
/// 
/// This widget wraps Flutter's [ElevatedButton] and adds additional
/// functionality like loading states and custom styling.
/// 
/// The [onPressed] callback is called when the button is tapped.
/// Set [isEnabled] to false to disable the button.
/// 
/// Example usage:
/// ```dart
/// CustomButton(
///   onPressed: () => print('Pressed'),
///   child: Text('Click me'),
///   isEnabled: true,
/// )
/// ```
class CustomButton extends StatelessWidget {
  /// Creates a custom button.
  /// 
  /// The [onPressed] and [child] parameters are required.
  /// The [isEnabled] parameter defaults to true.
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isEnabled = true,
  });

  /// Called when the button is pressed.
  final VoidCallback? onPressed;

  /// The widget to display inside the button.
  final Widget child;

  /// Whether the button is enabled for interaction.
  final bool isEnabled;
}
```

### Method Documentation Requirements
```dart
/// Validates the given email address format.
/// 
/// Returns `true` if the [email] is valid according to RFC standards.
/// Returns `false` if the format is invalid.
/// 
/// Throws [ArgumentError] if [email] is null or empty.
/// 
/// Example:
/// ```dart
/// final isValid = validateEmail('user@example.com'); // true
/// ```
bool validateEmail(String email) {
  if (email.isEmpty) {
    throw ArgumentError('Email cannot be empty');
  }
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}
```

## Flutter-Specific Patterns

- **Prefer composition over inheritance.**
- **Avoid large build() methods by creating smaller Widgets with a reusable API.**
- **Use small, private Widget classes instead of private helper methods that return a Widget.**
- **Use lazy lists wherever possible using ListView.builder.**

### Widget Construction
```dart
class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.content,
    this.elevation = 2.0,
    this.onTap,
  });

  final String title;
  final Widget content;
  final double elevation;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8.0),
              content,
            ],
          ),
        ),
      ),
    );
  }
}
```

## State Management
- **Don't use a third party package for state management unless explicitly asked to do so.**
- **Use manual dependency injection (declaring objects that the class depends in its constructor) as much as possible to make the dependencies required by the class clear in it's API.**
- **If asked to use Provider, use it for app-level objects that are used often.**
- **Use Model-View-ViewModel for application architecture.**
- **Use ChangeNotifier or a class with ValueNotifiers for ViewModel classes.**
- **Use a ListenableBuilder to listen to changes to the ViewModel.**
- **Use a StatefulWidget for widgets that are reusable or single-purpose, and don't necessarily require a MVVM architecture.**

## Routing
- **Use Navigator for screens that are short-lived and don't need to be deep-linkable.**

## Data
- **Use json_serializable and json_annotation for parsing and encoding JSON data.**
- **Use fieldRename: FieldRename.snake to encode data with snake case.**

## Code Generation
- **Use build_runner for any generated code in the app.**

## String and Collection Best Practices

### String Interpolation and Formatting
```dart
// PREFER using interpolation to compose strings
final name = 'John Doe';
final age = 25;
final message = 'Hello, $name! You are $age years old.';
final calculation = 'Next year you will be ${age + 1}.';

// DO use adjacent strings for long literals
const longText = 'This is a very long text that '
    'spans multiple lines for better '
    'readability in the source code.';
```

### Collection Usage
```dart
// DO use collection literals
final List<String> names = [];
final Map<String, int> scores = {};
final Set<int> uniqueIds = {};

// DON'T use .length to check if empty
if (names.isEmpty) { // Good
  print('No names');
}

if (names.length == 0) { // Bad
  print('No names');
}

// DO use collection methods effectively
final activeUsers = users.where((user) => user.isActive).toList();
final userNames = users.map((user) => user.name).toList();
```

### Function References
```dart
// DON'T create lambdas when tear-offs work
final numbers = [1, 2, 3, 4, 5];

// Good - use tear-off
numbers.forEach(print);

// Bad - unnecessary lambda
numbers.forEach((number) {
  print(number);
});
```

## Error Handling and Exceptions

### Meaningful Error Messages (Flutter Team Priority)
```dart
// Good: Specific and actionable
throw ArgumentError('Email must contain @ symbol');
throw StateError('Cannot call increment() after dispose()');

// Bad: Vague and unhelpful
throw ArgumentError('Invalid input');
throw Exception('Error occurred');
```

### Exception Handling Patterns
```dart
Future<User> fetchUser(String id) async {
  try {
    final response = await api.getUser(id);
    return User.fromJson(response.data);
  } on NetworkException catch (e) {
    throw UserFetchException('Failed to fetch user: ${e.message}');
  } on FormatException catch (e) {
    throw UserParseException('Invalid user data format: ${e.message}');
  } catch (e) {
    throw UserFetchException('Unexpected error: ${e.toString()}');
  }
}
```

## Testing Guidelines

- **Use package:integration_test for integration tests.**
- **Use package:checks instead of matchers from package:test or package:matcher.**

### Widget Testing
```dart
testWidgets('CustomButton should call onPressed when tapped', (tester) async {
  bool wasPressed = false;
  
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: CustomButton(
          onPressed: () => wasPressed = true,
          child: const Text('Test Button'),
        ),
      ),
    ),
  );
  
  await tester.tap(find.byType(CustomButton));
  await tester.pump();
  
  expect(wasPressed, isTrue);
});
```

### Unit Testing Structure
```dart
group('UserRepository', () {
  late UserRepository repository;
  late MockApiClient mockApi;
  
  setUp(() {
    mockApi = MockApiClient();
    repository = UserRepository(api: mockApi);
  });
  
  group('getUser', () {
    test('should return user when valid ID provided', () async {
      // Arrange
      const userId = '123';
      final expectedUser = User(id: userId, name: 'John');
      when(() => mockApi.getUser(userId))
          .thenAnswer((_) async => expectedUser.toJson());
      
      // Act
      final user = await repository.getUser(userId);
      
      // Assert
      expect(user.id, equals(userId));
      expect(user.name, equals('John'));
    });
    
    test('should throw exception when user not found', () async {
      // Arrange
      const userId = 'invalid';
      when(() => mockApi.getUser(userId))
          .thenThrow(NotFoundException());
      
      // Act & Assert
      expect(
        () => repository.getUser(userId),
        throwsA(isA<UserNotFoundException>()),
      );
    });
  });
});
```

## Advanced Dart Patterns

- **Use Patterns and pattern-matching features where possible.**

### Immutability and Data Classes
```dart
class User {
  const User({
    required this.id,
    required this.name,
    required this.email,
    this.isActive = true,
  });
  
  final String id;
  final String name;
  final String email;
  final bool isActive;
  
  // Use copyWith for immutable updates
  User copyWith({
    String? id,
    String? name,
    String? email,
    bool? isActive,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      isActive: isActive ?? this.isActive,
    );
  }
  
  // Override equality
  @override
  bool operator ==(Object other) =>
      other is User &&
      runtimeType == other.runtimeType &&
      id == other.id;
  
  @override
  int get hashCode => id.hashCode;
  
  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
}
```

### Enum Usage and Switch Statements
```dart
enum ConnectionState {
  disconnected,
  connecting,
  connected,
  error,
}

// Use switch without default to catch all cases
Widget buildConnectionIndicator(ConnectionState state) {
  switch (state) {
    case ConnectionState.disconnected:
      return const Icon(Icons.wifi_off, color: Colors.grey);
    case ConnectionState.connecting:
      return const CircularProgressIndicator();
    case ConnectionState.connected:
      return const Icon(Icons.wifi, color: Colors.green);
    case ConnectionState.error:
      return const Icon(Icons.error, color: Colors.red);
  }
}
```

### Effective Use of Assert
```dart
class Rectangle {
  const Rectangle({
    required this.width,
    required this.height,
  }) : assert(width > 0, 'Width must be positive'),
       assert(height > 0, 'Height must be positive');

  final double width;
  final double height;

  double get area {
    assert(width > 0 && height > 0, 'Invalid rectangle dimensions');
    return width * height;
  }
}
```

## Performance and Best Practices

### Const Constructors and Optimization
```dart
// Use const constructors when possible
const EdgeInsets.all(16.0);
const SizedBox(height: 8.0);

// Create const widgets for better performance
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
```

### Efficient Widget Building
```dart
class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    // Don't do heavy computation in build method
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductTile(
          key: ValueKey(product.id),
          product: product,
        );
      },
    );
  }
}
```

## Anti-Patterns to Avoid

### Common Mistakes
```dart
// DON'T use double negatives
bool get isNotDisabled => !disabled; // Confusing

// DO use positive naming
bool get isEnabled => !disabled; // Clear

// DON'T use global state
var globalCounter = 0; // Avoid

// DO use proper state management
class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
}

// DON'T create classes with only static members
class MathUtils {
  static double pi = 3.14159;
  static double circleArea(double radius) => pi * radius * radius;
}

// DO use top-level functions and constants
const double pi = 3.14159;
double circleArea(double radius) => pi * radius * radius;

// DON'T avoid using APIs as intended
class TimeSlot {
  TimeSlot(this.start, this.end);
  DateTime start;
  DateTime end;
}

// DO follow API design principles
class TimeSlot {
  const TimeSlot({
    required this.start,
    required this.end,
  }) : assert(start.isBefore(end), 'Start must be before end');
  
  final DateTime start;
  final DateTime end;
}
```

## Tools and Development Workflow

### Required Tools
- **`dart format`**: Automatic code formatting (mandatory)
- **`dart analyze`**: Static analysis and linting
- **`flutter test`**: Run tests
- **IDE setup**: Configure your IDE to run these tools automatically
- **Pre-commit hooks**: Ensure code quality before commits

### Code Quality Checklist
- [ ] All code formatted with `dart format`
- [ ] No analyzer warnings or errors
- [ ] All public APIs documented with `///` comments
- [ ] Tests written for new functionality
- [ ] Error messages are specific and actionable
- [ ] Type annotations present on all public APIs
- [ ] Immutable objects used where appropriate
- [ ] Assert statements used to verify contracts

This unified style guide ensures consistency with both Flutter team practices and official Dart conventions, helping create maintainable, readable code that follows established patterns.