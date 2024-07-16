import 'config/dependencies.dart';
import 'ui/core/themes/theme.dart';
import 'routing/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/core/ui/scroll_behavior.dart';

/// Configure dependencies in main method.
/// - Use [providersLocal] to display local data.
/// - Use [providersRemote] to display remote data from a server.
void main() {
  runApp(
    MultiProvider(
      providers: providersRemote,
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
