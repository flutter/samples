import 'package:flutter/material.dart';

import 'form.dart';
import 'form_header.dart';
import 'text_link.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  static const colDivider = SizedBox(height: 12);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  FormStatus _status = FormStatus.idle;

  Future submit() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _status = FormStatus.busy);
      await Future.delayed(Durations.extralong4, () => null);
      setState(() => _status = FormStatus.idle);
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        FormHeader(title: const Text('Sign In')),
        SignInForm.colDivider,
        const StartPadding(child: InputLabel('Email')),
        const SizedBox(height: 6),
        const StartPadding(child: MailInput()),
        SignInForm.colDivider,
        const StartPadding(child: InputLabel('Password')),
        const SizedBox(height: 6),
        const StartPadding(child: PasswordInput()),
        SignInForm.colDivider,
        const Row(
          children: [RememberCheckbox(), Spacer(), ForgotPasswordLink()],
        ),
        SignInForm.colDivider,
        SignInForm.colDivider,
        StartPadding(child: SubmitButton(status: _status, onPressed: submit)),
        SignInForm.colDivider,
        SignInForm.colDivider,
        const Center(child: SignUpLink()),
      ]),
    );
  }
}

class SignUpLink extends Wrap {
  const SignUpLink({super.key});

  @override
  List<Widget> get children {
    return [
      const Text('''Don't have an account? '''),
      LinkText('''Sign up''', onLinkTap: (url) {})
    ];
  }
}

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return LinkText('''Forgot Password''', onLinkTap: (url) {});
  }
}

class RememberCheckbox extends StatefulWidget {
  const RememberCheckbox({super.key});

  @override
  State<RememberCheckbox> createState() => _RememberCheckboxState();
}

class _RememberCheckboxState extends State<RememberCheckbox> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        value: _value,
        onChanged: (value) => setState(() => _value = value),
      ),
      const SizedBox(width: 4),
      const Text('Remember me'),
    ]);
  }
}

class StartPadding extends Padding {
  const StartPadding({
    super.key,
    super.child,
    super.padding = const EdgeInsetsDirectional.only(start: 6),
  });
}
