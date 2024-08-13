import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import '../data/components/auth/auth_login_component.dart';
import '../data/repositories/activity/activity_repository.dart';
import '../data/repositories/activity/activity_repository_local.dart';
import '../data/repositories/activity/activity_repository_remote.dart';
import '../data/repositories/auth/auth_token_repository.dart';
import '../data/repositories/auth/auth_token_repository_dev.dart';
import '../data/repositories/auth/auth_token_repository_shared_prefs.dart';
import '../data/repositories/continent/continent_repository.dart';
import '../data/repositories/continent/continent_repository_local.dart';
import '../data/repositories/continent/continent_repository_remote.dart';
import '../data/repositories/destination/destination_repository.dart';
import '../data/repositories/destination/destination_repository_local.dart';
import '../data/repositories/destination/destination_repository_remote.dart';
import '../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../data/repositories/itinerary_config/itinerary_config_repository_memory.dart';
import '../data/services/api_client.dart';
import '../ui/booking/components/booking_create_component.dart';
import '../ui/booking/components/booking_share_component.dart';

/// Shared providers for all configurations.
List<SingleChildWidget> _sharedProviders = [
  Provider(
    lazy: true,
    create: (context) => BookingCreateComponent(
      destinationRepository: context.read(),
      activityRepository: context.read(),
    ),
  ),
  Provider(
    lazy: true,
    create: (context) => BookingShareComponent.withSharePlus(),
  ),
];

/// Configure dependencies for remote data.
/// This dependency list uses repositories that connect to a remote server.
List<SingleChildWidget> get providersRemote {
  return [
    ChangeNotifierProvider.value(
      value: AuthTokenRepositorySharedPrefs() as AuthTokenRepository,
    ),
    Provider(
      create: (context) => ApiClient(authTokenRepository: context.read()),
    ),
    Provider(
      create: (context) => AuthLoginComponent(
        authTokenRepository: context.read(),
        apiClient: context.read(),
      ),
    ),
    Provider(
      create: (context) => DestinationRepositoryRemote(
        apiClient: context.read(),
      ) as DestinationRepository,
    ),
    Provider(
      create: (context) => ContinentRepositoryRemote(
        apiClient: context.read(),
      ) as ContinentRepository,
    ),
    Provider(
      create: (context) => ActivityRepositoryRemote(
        apiClient: context.read(),
      ) as ActivityRepository,
    ),
    Provider.value(
      value: ItineraryConfigRepositoryMemory() as ItineraryConfigRepository,
    ),
    ..._sharedProviders,
  ];
}

/// Configure dependencies for local data.
/// This dependency list uses repositories that provide local data.
/// The user is always logged in.
List<SingleChildWidget> get providersLocal {
  return [
    ChangeNotifierProvider.value(
      value: AuthTokenRepositoryDev() as AuthTokenRepository,
    ),
    Provider.value(
      value: DestinationRepositoryLocal() as DestinationRepository,
    ),
    Provider.value(
      value: ContinentRepositoryLocal() as ContinentRepository,
    ),
    Provider.value(
      value: ActivityRepositoryLocal() as ActivityRepository,
    ),
    Provider.value(
      value: ItineraryConfigRepositoryMemory() as ItineraryConfigRepository,
    ),
    ..._sharedProviders,
  ];
}
