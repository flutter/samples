import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import '../data/repositories/continent/continent_repository.dart';
import '../data/repositories/continent/continent_repository_local.dart';
import '../data/repositories/continent/continent_repository_remote.dart';
import '../data/repositories/destination/destination_repository.dart';
import '../data/repositories/destination/destination_repository_local.dart';
import '../data/repositories/destination/destination_repository_remote.dart';
import '../data/services/apiclient.dart';

/// Configure dependencies as a list of Providers
List<SingleChildWidget> get providers {
  final apiClient = ApiClient();

  // List of Providers
  return [
    Provider.value(
      value: DestinationRepositoryLocal() as DestinationRepository,
    ),
    Provider.value(
      value: DestinationRepositoryRemote(
        apiClient: apiClient,
      ) as DestinationRepository,
    ),
    // Provider.value(
    //   value: ContinentRepositoryLocal() as ContinentRepository,
    // ),
    Provider.value(
      value: ContinentRepositoryRemote(
        apiClient: apiClient,
      ) as ContinentRepository,
    ),
  ];
}
