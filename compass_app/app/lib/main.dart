import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';
import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:compass_app/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // Configure dependencies
  // These dependencies don't need to be in the widget tree (yet?)
  final repository = DestinationRepository();
  final searchDestinationUsecase =
      SearchDestinationUsecase(repository: repository);

  runApp(
    MultiProvider(
      providers: [
        // ViewModels are injected into Views using Provider
        ChangeNotifierProvider(
          create: (_) => ResultsViewModel(
            searchDestinationUsecase: searchDestinationUsecase,
          ),
          // create this ViewModel only when needed
          lazy: true,
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
