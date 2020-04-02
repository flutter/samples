import 'package:flutter/material.dart';
import 'package:web_dashboard/src/auth/auth_service.dart';

class SignInPage extends StatefulWidget {
  final Auth auth;
  final Widget onSuccess;

  SignInPage({
    @required this.auth,
    @required this.onSuccess,
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
  }

  Route _createRoute() {
    return PageRouteBuilder<FadeTransition>(
      pageBuilder: (context, animation, secondaryAnimation) {
        return widget.onSuccess;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var curveTween = CurveTween(curve: Curves.ease);

        return FadeTransition(
          opacity: animation.drive(curveTween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () async {
            await _signIn();
            if (_user != null) {
              Navigator.of(context).pushReplacement(_createRoute());
            } else {
              throw('Unable to sign in');
            }
          },
        ),
      ),
    );
  }
}
