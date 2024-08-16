import 'package:logging/logging.dart';

import '../../../../domain/components/auth/auth_login_component.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class LoginViewModel {
  LoginViewModel({
    required AuthLoginComponent authLoginComponent,
  }) : _authLoginComponent = authLoginComponent {
    login = Command1<void, (String email, String password)>(_login);
  }

  final AuthLoginComponent _authLoginComponent;
  final _log = Logger('LoginViewModel');

  late Command1 login;

  Future<Result<void>> _login((String, String) credentials) async {
    final (email, password) = credentials;
    final result = await _authLoginComponent.login(
      email: email,
      password: password,
    );
    if (result is Error<void>) {
      _log.warning('Login failed! ${result.error}');
    }
    return result;
  }
}
