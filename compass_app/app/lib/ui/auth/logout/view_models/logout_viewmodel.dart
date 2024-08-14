import '../../../../data/components/auth/auth_logout_component.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class LogoutViewModel {
  LogoutViewModel({
    required AuthLogoutComponent authLogoutComponent,
  }) : _authLogoutComponent = authLogoutComponent {
    logout = Command0(_logout);
  }
  final AuthLogoutComponent _authLogoutComponent;
  late Command0 logout;

  Future<Result> _logout() => _authLogoutComponent.logout();
}
