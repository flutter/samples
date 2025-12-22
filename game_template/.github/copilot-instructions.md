# Copilot Instructions for Flutter Game Template

## Project Overview
This is a mobile game template built with Flutter showcasing a complete starter game with navigation, audio, state management, and optional integrations (ads, in-app purchases, games services, Firebase Crashlytics). The template is intentionally low-level on state management to avoid complexity while remaining extensible.

## Architecture & Key Components

### Feature-First Organization (`lib/src/`)
Code is organized by feature, not by layer. Each feature directory is semi-independent:
- `audio/` - Music and sound effects (via `audioplayers` package)
- `player_progress/` - Game progress tracking with persistence abstraction
- `settings/` - User preferences (muted, music, sound, player name)
- `app_lifecycle/` - Lifecycle event monitoring via `WidgetsBindingObserver`
- `main_menu/`, `level_selection/`, `play_session/`, `win_game/` - Screen features
- `ads/`, `games_services/`, `in_app_purchase/` - Optional integrations (disabled by default)
- `style/` - Palette, responsive layout, custom transitions

### State Management Pattern
Uses **Provider** with a low-level, intentional approach:
- **ChangeNotifier** for mutable state (`PlayerProgress`, `SettingsController`, `AudioController`)
- **ValueNotifier** for simple reactive properties (settings values, lifecycle state)
- **MultiProvider** setup in `main.dart` with explicit dependency ordering
- Key insight: `AudioController` depends on `SettingsController` via `ProxyProvider2` for reactive attachment
- No code generation; manually attach listeners using `attachSettings()` and `attachLifecycleNotifier()` patterns

### Persistence Abstraction
All persistent data uses dependency-injected interfaces:
- `PlayerProgressPersistence` (injected in `PlayerProgress`)
- `SettingsPersistence` (injected in `SettingsController`)
- Default implementation: `LocalStoragePlayerProgressPersistence`, `LocalStorageSettingsPersistence`
- This allows easy testing or swapping implementations (e.g., Firebase, cloud sync)

### Navigation
Uses **GoRouter** (v16.0.0+) with nested route structure in `main.dart`:
- Routes are statically defined in `MyApp._router`
- Transitions use custom `buildMyTransition<void>()` helper from `src/style/my_transition.dart`
- Parameters passed via `state.pathParameters` (e.g., level number in `/play/session/:level`)
- Extra data passed via `state.extra` and validated with guards (e.g., win screen redirect)

### Audio Integration
`AudioController` is a facade over `audioplayers` package:
- Manages a music player + pool of SFX players (configurable polyphony, default 2)
- Automatically shuffles playlist and handles lifecycle pauses
- Pauses audio when app goes to background; resumes on foreground
- Settings-aware: respects muted, musicOn, soundsOn toggles
- Use `audioController.playSfx(SfxType.buttonTap)` to play sound effects

### Optional Integrations (Commented By Default)
In `main.dart`, integrations are **commented out and must be explicitly enabled**:
- **Firebase Crashlytics**: Uncomment imports and initialize block; requires `firebase_options.dart`
- **Google Mobile Ads**: Uncomment `AdsController` initialization; requires `google_mobile_ads` package
- **Games Services**: Uncomment `GamesServicesController` initialization
- **In-App Purchase**: Uncomment `InAppPurchaseController` initialization
- All integrations use platform guards: `!kIsWeb && (Platform.isIOS || Platform.isAndroid)`

## Development Workflows

### Running the App
```bash
# Default (emulator/simulator/physical device)
flutter run

# Desktop (faster iteration, no emulator needed)
flutter run -d macOS     # or -d linux / -d windows

# Web (useful for demos)
flutter run -d web
```

### Building for Production
```bash
# iOS
flutter build ipa && open build/ios/archive/Runner.xcarchive

# Android
flutter build appbundle && open build/app/outputs/bundle/release

# Web (requires 'peanut' package)
flutter pub global run peanut --web-renderer canvaskit --extra-args "--base-href=/repo_name/" && git push origin --set-upstream gh-pages
```

### Analysis & Linting
Uses `flutter_lints` with minimal overrides (prefer_const_constructors and prefer_single_quotes disabled for early development). Check with:
```bash
flutter analyze
```

## Code Patterns & Conventions

### Logging
Uses `package:logging` with dev.log:
```dart
static final _log = Logger('ClassName');
_log.info('message');
_log.warning('warning');
```

### Responsive UI
Custom `ResponsiveScreen` widget in `src/style/responsive_screen.dart` provides `mainAreaProminence` and layout areas. Use for adaptive layouts across mobile/tablet/desktop.

### Snack Bar Feedback
Custom `showSnackBar()` in `src/style/snack_bar.dart`. Use a global `scaffoldMessengerKey` passed to `MaterialApp.router`.

### Palette & Theme
Centralized `Palette` provider in `src/style/palette.dart`. Inject via `context.watch<Palette>()`. Avoids hardcoding colors.

### Game Levels
Game levels defined in `src/level_selection/levels.dart` as a list. Reference by level number in routing.

### Screen State Management
Screens are typically StatelessWidget that watch providers. Mutable interactions go through provider controllers:
```dart
final audioController = context.watch<AudioController>();
audioController.playSfx(SfxType.buttonTap);
```

## Dependencies Overview
- **go_router** (v16.0.0): Navigation and routing
- **provider** (v6.0.2): State management
- **audioplayers** (v6.0.0): Audio playback
- **shared_preferences**: Local persistence (via abstraction)
- **logging**: Structured logging to dart:developer
- Optional: firebase_core, firebase_crashlytics, google_mobile_ads, games_services, in_app_purchase

## Critical Notes for Contributors
1. **Persistence is abstracted**: Always use the persistence interface, not SharedPreferences directly
2. **Controllers manage their own initialization**: Check `initialize()` methods and async setup requirements
3. **Lifecycle matters**: Audio and ads controllers must respect app lifecycle state
4. **Platform-specific code**: Use `kIsWeb` and platform checks (`Platform.isIOS`, etc.) for platform-specific logic
5. **No code generation**: Template intentionally avoids build_runner for simplicity; can be added if needed
6. **Settings require explicit toggle**: Integrations are commented out; uncomment and enable explicitly when needed
7. **Router validation**: Use `redirect` guards on sensitive routes (e.g., win screen requires score extra data)
