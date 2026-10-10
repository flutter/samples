import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const Frontend2App());
}

class Frontend2App extends StatelessWidget {
  const Frontend2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frontend2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}