import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';
import 'package:compass_app/features/results/data/destination_repository_local.dart';
import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// Configure dependencies
List<SingleChildWidget> get providers {
  // These dependencies don't need to be in the widget tree (yet?)
  final destinationRepository = DestinationRepositoryLocal();
  // Configure usecase to use the local data repository implementation
  final searchDestinationUsecase = SearchDestinationUsecase(
    repository: destinationRepository,
  );

  // List of Providers
  return [
    // ViewModels are injected into Views using Provider
    ChangeNotifierProvider(
      create: (_) => ResultsViewModel(
        searchDestinationUsecase: searchDestinationUsecase,
      ),
      // create this ViewModel only when needed
      lazy: true,
    ),
  ];
}
