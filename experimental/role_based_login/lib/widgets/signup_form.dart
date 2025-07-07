import 'package:role_based_login/app_importer.dart';

class SignUpForm extends StatelessWidget {
  final SignUpController controller;
  final BuildContext context;

  const SignUpForm(this.controller, this.context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (val) => val!.isEmpty ? 'Enter email' : null,
          ),
          TextFormField(
            controller: controller.passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
            validator: (val) => val!.isEmpty ? 'Enter password' : null,
          ),
          DropdownButtonFormField(
            value: controller.selectedRole,
            items: const [
              DropdownMenuItem(value: 'admin', child: Text('Admin')),
              DropdownMenuItem(value: 'user', child: Text('User')),
            ],
            onChanged: controller.onRoleChanged,
            decoration: const InputDecoration(labelText: 'Select Role'),
          ),
          const SizedBox(height: 20),

           AnimatedBuilder(
               animation: controller,
               builder: (_, __) {
                 return controller.isLoading
                   ? CircularProgressIndicator()
                   : ElevatedButton(
                   onPressed: () => controller.signup(this.context),
                   child: const Text('Register'),
                 );
               }

           )

        ],
      ),
    );
  }
}
