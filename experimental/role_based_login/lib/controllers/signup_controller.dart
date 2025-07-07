import 'package:role_based_login/app_importer.dart';

class SignUpController extends ChangeNotifier{
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String selectedRole = 'user';
  bool isLoading = false;

  Future<void> signup(BuildContext context) async {
    if (formKey.currentState!.validate()) {

      isLoading = true;
      notifyListeners();


      final error = await AuthService().signUp(
        emailController.text,
        passwordController.text,
        selectedRole,
      );

      isLoading = false;
      notifyListeners();

      if (error == null) {
        if (context.mounted) Navigator.pop(context);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(error)));
      }
    }
  }

  void onRoleChanged(String? val) {
    selectedRole = val!;
    notifyListeners();
  }

  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
