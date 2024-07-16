import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import '../data/repositories/continent/continent_repository.dart';
import '../data/repositories/continent/continent_repository_local.dart';
import '../data/repositories/continent/continent_repository_remote.dart';
import '../data/repositories/destination/destination_repository.dart';
import '../data/repositories/destination/destination_repository_local.dart';
import '../data/repositories/destination/destination_repository_remote.dart';
import '../data/services/apiclient.dart';

/// Configure dependencies for remote data.
/// This dependency list uses repositories that connect to a remote server.
List<SingleChildWidget> get providersRemote {
  final apiClient = ApiClient();

  return [
    Provider.value(
      value: DestinationRepositoryRemote(
        apiClient: apiClient,
      ) as DestinationRepository,
    ),
    Provider.value(
      value: ContinentRepositoryRemote(
        apiClient: apiClient,
      ) as ContinentRepository,
    ),
  ];
}

/// Configure dependencies for local data.
/// This dependency list uses repositories that provide local data.
List<SingleChildWidget> get providersLocal {
  return [
    Provider.value(
      value: DestinationRepositoryLocal() as DestinationRepository,
    ),
    Provider.value(
      value: ContinentRepositoryLocal() as ContinentRepository,
    ),
  ];
}
