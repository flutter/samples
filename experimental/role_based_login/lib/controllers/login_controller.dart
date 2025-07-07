import 'package:role_based_login/app_importer.dart';

class LoginController extends ChangeNotifier{
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String selectedRole = 'user';
  bool isLoading = false;

  Future<void> handleLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {

      isLoading = true;
      notifyListeners();

      final error = await AuthService().signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
        selectedRole,
      );

      isLoading = false;
      notifyListeners();

      if (error == null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => selectedRole == 'admin'
                ? const AdminDashboard()
                : const UserDashboard(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(error)));
      }
    }
  }

  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
