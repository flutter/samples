import 'package:compass_model/model.dart';

import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../../utils/command.dart';
import '../../../../utils/result.dart';

class LogoutViewModel {
  LogoutViewModel({
    required AuthRepository authRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  })  : _authLogoutComponent = authRepository,
        _itineraryConfigRepository = itineraryConfigRepository {
    logout = Command0(_logout);
  }
  final AuthRepository _authLogoutComponent;
  final ItineraryConfigRepository _itineraryConfigRepository;
  late Command0 logout;

  Future<Result> _logout() async {
    var result = await _authLogoutComponent.logout();
    switch (result) {
      case Ok<void>():
        // clear stored itinerary config
        return _itineraryConfigRepository
            .setItineraryConfig(const ItineraryConfig());
      case Error<void>():
        return result;
    }
  }
}
