import 'package:compass_app/data/repositories/destination/destination_repository_local.dart';
import 'package:compass_app/ui/results/business/search_destination_usecase.dart';
import 'package:compass_app/ui/results/presentation/results_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// Configure dependencies as a list of Providers
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
