import 'package:flutter/material.dart';

class MyLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.display4),
              SizedBox(height: 24),
              _LoginTextField(hintText: 'Login'),
              SizedBox(height: 12),
              _LoginTextField(hintText: 'Password', obscureText: true),
              SizedBox(height: 24),
              FlatButton(
                color: Colors.yellow,
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/catalog'),
                child: Text('ENTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginTextField extends StatelessWidget {
  final String hintText;

  final bool obscureText;

  _LoginTextField({
    Key key,
    @required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.black12,
      ),
      obscureText: obscureText,
    );
  }
}
