import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/auth/auth_service.dart';

class AppState {
  final DashboardApi api;
  final Auth auth;

  AppState(this.api, this.auth);
}
