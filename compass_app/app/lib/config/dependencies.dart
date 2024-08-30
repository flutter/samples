import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

import '../data/repositories/auth/auth_repository.dart';
import '../data/repositories/auth/auth_repository_dev.dart';
import '../data/repositories/auth/auth_repository_remote.dart';
import '../data/repositories/booking/booking_repository.dart';
import '../data/repositories/booking/booking_repository_local.dart';
import '../data/repositories/booking/booking_repository_remote.dart';
import '../data/services/api/auth_api_client.dart';
import '../data/services/local/local_data_service.dart';
import '../data/services/shared_preferences_service.dart';
import '../data/repositories/activity/activity_repository.dart';
import '../data/repositories/activity/activity_repository_local.dart';
import '../data/repositories/activity/activity_repository_remote.dart';
import '../data/repositories/continent/continent_repository.dart';
import '../data/repositories/continent/continent_repository_local.dart';
import '../data/repositories/continent/continent_repository_remote.dart';
import '../data/repositories/destination/destination_repository.dart';
import '../data/repositories/destination/destination_repository_local.dart';
import '../data/repositories/destination/destination_repository_remote.dart';
import '../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../data/repositories/itinerary_config/itinerary_config_repository_memory.dart';
import '../data/services/api/api_client.dart';
import '../domain/components/booking/booking_create_component.dart';
import '../domain/components/booking/booking_share_component.dart';

/// Shared providers for all configurations.
List<SingleChildWidget> _sharedProviders = [
  Provider(
    lazy: true,
    create: (context) => BookingCreateComponent(
      destinationRepository: context.read(),
      activityRepository: context.read(),
      bookingRepository: context.read(),
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
    Provider(
      create: (context) => AuthApiClient(),
    ),
    Provider(
      create: (context) => ApiClient(),
    ),
    Provider(
      create: (context) => SharedPreferencesService(),
    ),
    ChangeNotifierProvider(
      create: (context) => AuthRepositoryRemote(
        authApiClient: context.read(),
        apiClient: context.read(),
        sharedPreferencesService: context.read(),
      ) as AuthRepository,
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
    Provider(
      create: (context) => BookingRepositoryRemote(
        apiClient: context.read(),
      ) as BookingRepository,
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
      value: AuthRepositoryDev() as AuthRepository,
    ),
    Provider.value(
      value: LocalDataService(),
    ),
    Provider(
      create: (context) => DestinationRepositoryLocal(
        localDataService: context.read(),
      ) as DestinationRepository,
    ),
    Provider(
      create: (context) => ContinentRepositoryLocal(
        localDataService: context.read(),
      ) as ContinentRepository,
    ),
    Provider(
      create: (context) => ActivityRepositoryLocal(
        localDataService: context.read(),
      ) as ActivityRepository,
    ),
    Provider(
      create: (context) => BookingRepositoryLocal(
        localDataService: context.read(),
      ) as BookingRepository,
    ),
    Provider.value(
      value: ItineraryConfigRepositoryMemory() as ItineraryConfigRepository,
    ),
    ..._sharedProviders,
  ];
}
