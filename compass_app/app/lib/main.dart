import 'config/dependencies.dart';
import 'ui/core/themes/theme.dart';
import 'routing/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/core/ui/scroll_behavior.dart';

void main() {
  runApp(
    MultiProvider(
      // Loading the default providers
      // NOTE: We can load different configurations e.g. fakes
      providers: providers,
      child: const MainApp(),
    ),
  );
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
