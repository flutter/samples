import 'package:flutter/services.dart';

import 'config/assets.dart';
import 'ui/core/themes/theme.dart';
import 'routing/router.dart';
import 'package:flutter/material.dart';

import 'ui/core/ui/scroll_behavior.dart';
import 'main_development.dart' as development;

/// Default main method
void main() {
  // Launch development config by default
  development.main();
  rootBundle.loadString('AssetManifest.json').then((assets) {
    print(assets);
  } );

  rootBundle.loadString(Assets.destinations);
  rootBundle.loadString(Assets.activities);

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: AppCustomScrollBehavior(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
