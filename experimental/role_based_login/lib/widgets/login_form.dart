import 'package:role_based_login/app_importer.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final controller = LoginController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            onChanged: (val) =>
                setState(() => controller.selectedRole = val!),
            decoration: const InputDecoration(labelText: 'Select Role'),
          ),
          const SizedBox(height: 20),

          AnimatedBuilder(
              animation: controller,
              builder: (_, __) {
                return controller.isLoading
                    ? CircularProgressIndicator(color: Colors.indigo,)
                    : ElevatedButton(
                  onPressed: () => controller.handleLogin(context),
                  child: const Text('Login'),
                );
              }
          ),

          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SignUpScreen()),
              );
            },
            child: const Text("Don't have an account? Sign Up"),
          ),
        ],
      ),
    );
  }
}
