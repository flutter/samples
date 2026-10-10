import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const Frontend1App());
}

class Frontend1App extends StatelessWidget {
  const Frontend1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frontend1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}