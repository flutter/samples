import 'package:compass_app/ui/results/presentation/results_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/results/presentation/results_viewmodel.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/results',
  routes: [
    GoRoute(
      path: '/results',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (context) => ResultsViewModel(
            destinationRepository: context.read(),
          ),
          child: const ResultsScreen(),
        );
      },
    ),
  ],
);
