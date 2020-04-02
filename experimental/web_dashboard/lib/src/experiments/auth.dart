import 'package:flutter/material.dart';
import 'package:web_dashboard/src/auth/auth_service.dart';
import 'package:web_dashboard/src/auth/firebase_auth_service.dart';
import 'package:web_dashboard/src/pages/sign_in.dart';

final Auth auth = FirebaseAuthService();

class AuthDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SignInPage(auth: auth),
        '/home': (context) => HomePage(),
      },
      initialRoute: '/',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
