import 'package:compass_app/ui/results/presentation/results_screen.dart';
import 'package:go_router/go_router.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/results',
  routes: [
    GoRoute(
      path: '/results',
      builder: (context, state) {
        return const ResultsScreen();
      },
    ),
  ],
);
