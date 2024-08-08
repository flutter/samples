import 'package:compass_model/model.dart';

import 'activity.dart';
import 'destination.dart';

final kBooking = Booking(
  startDate: DateTime(2024, 01, 01),
  endDate: DateTime(2024, 02, 12),
  destination: kDestination1,
  activity: [kActivity],
);
