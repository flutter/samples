import 'package:flutter/material.dart';
import 'package:web_dashboard/src/auth/auth.dart';

class SignInPage extends StatefulWidget {
  final Auth auth;
  final ValueChanged<User> onSuccess;

  SignInPage({
    @required this.auth,
    @required this.onSuccess,
  });

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () async {
            var user = await widget.auth.signIn();
            if (user != null) {
              widget.onSuccess(user);
            } else {
              throw('Unable to sign in');
            }
          },
        ),
      ),
    );
  }
}
