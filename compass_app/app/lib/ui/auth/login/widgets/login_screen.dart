import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../data/components/auth/auth_login_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          AuthLoginComponent(
                  apiClient: context.read(),
                  authTokenRepository: context.read())
              .login(email: 'email@example.com', password: 'password')
              .then((_) {
            context.go('/');
          });
        },
        child: Text('Login'),
      ),
    );
  }
}
