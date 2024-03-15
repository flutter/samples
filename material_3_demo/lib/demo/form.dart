import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icons.dart';

class VisibilityIconButton extends IconButton {
  const VisibilityIconButton({
    super.key,
    required bool visibility,
    required VoidCallback onPressed,
  }) : super(
          onPressed: onPressed,
          icon: !visibility
              ? const AppIcon(AIcons.eyeSlashBold, size: 20)
              : const AppIcon(AIcons.eyeBold, size: 20),
        );
}

class InputLabel extends StatelessWidget {
  const InputLabel(this.data, {super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).inputDecorationTheme.labelStyle);
  }
}

class MailInput extends StatelessWidget {
  const MailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: const InputDecoration(
        prefixIcon: AppIcon(AIcons.sms1Bold, size: 20),
        filled: true,
        hintText: 'Email Address',
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _visibility = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        prefixIcon: const AppIcon(AIcons.lock1Bold, size: 20),
        suffixIcon: VisibilityIconButton(
          onPressed: () => setState(() => _visibility = !_visibility),
          visibility: _visibility,
        ),
      ),
      obscureText: _visibility,
    );
  }
}

enum FormStatus { idle, busy }

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    this.status = FormStatus.idle,
    this.onPressed,
  });

  final FormStatus status;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: switch (status) {
        FormStatus.busy => null,
        FormStatus.idle => onPressed,
      },
      child: switch (status) {
        FormStatus.busy => const CupertinoActivityIndicator(),
        _ => const Text('Sign In'),
      },
    );
  }
}
