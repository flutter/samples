import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/components/auth/auth_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          context
              .read<AuthComponent>()
              .login(email: 'email@example.com', password: 'password');
        },
        child: Text('Login'),
      ),
    );
  }
}
