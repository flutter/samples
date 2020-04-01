import 'package:flutter/material.dart';
import 'package:web_dashboard/src/auth/auth_service.dart';
import 'package:web_dashboard/src/auth/firebase_auth_service.dart';

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

class SignInPage extends StatefulWidget {
  Auth auth;

  SignInPage({
    this.auth,
  });

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  User _user;

  @override
  void initState() {
    super.initState();
  }

  Future _signIn() async {
    _user = await widget.auth.signIn();
    print('signed in as $_user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () {
            _signIn().then((value) {
              if (_user != null) {
                Navigator.of(context).pushNamed('/home');
              }
            });
          },
        ),
      ),
    );
  }
}
