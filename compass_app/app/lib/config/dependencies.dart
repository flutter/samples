import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import '../data/repositories/destination/destination_repository.dart';
import '../data/repositories/destination/destination_repository_local.dart';
import '../data/repositories/region/region_repository.dart';
import '../data/repositories/region/region_repository_local.dart';

/// Configure dependencies as a list of Providers
List<SingleChildWidget> get providers {
  // List of Providers
  return [
    Provider.value(
      value: DestinationRepositoryLocal() as DestinationRepository,
    ),
    Provider.value(
      value: RegionRepositoryLocal() as RegionRepository,
    ),
  ];
}
