import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class LogoutViewModel {
  LogoutViewModel({
    required AuthRepository authRepository,
  }) : _authLogoutComponent = authRepository {
    logout = Command0(_logout);
  }
  final AuthRepository _authLogoutComponent;
  late Command0 logout;

  Future<Result> _logout() => _authLogoutComponent.logout();
}
