import 'package:flutter/material.dart';
import 'package:web_dashboard/src/auth/auth_service.dart';
import 'package:web_dashboard/src/auth/firebase_auth_service.dart';
import 'package:web_dashboard/src/pages/sign_in.dart';

final Auth auth = FirebaseAuthService();

class AuthDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder:(context) => SignInPage(
          auth: auth,
          onSuccess: (User user) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
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
