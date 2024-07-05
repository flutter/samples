import 'package:compass_app/data/repositories/destination/destination_repository.dart';
import 'package:compass_app/data/repositories/destination/destination_repository_local.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// Configure dependencies as a list of Providers
List<SingleChildWidget> get providers {
  // List of Providers
  return [
    Provider.value(
      value: DestinationRepositoryLocal() as DestinationRepository,
    ),
  ];
}
