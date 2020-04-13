import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/auth/auth_service.dart';

class AppState {
  final Auth auth;
  DashboardApi api;

  AppState(this.auth);
}
