import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';
import 'package:compass_app/features/results/presentation/results_screen.dart';
import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/results',
  routes: [
    GoRoute(
        path: '/results',
        builder: (context, state) {
          return ResultsScreen(
            resultsViewModel: ResultsViewModel(
              searchDestinationUsecase: SearchDestinationUsecase(
                repository: DestinationRepository(),
              ),
            ),
          );
        })
  ],
);
