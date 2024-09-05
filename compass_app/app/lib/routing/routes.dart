class Routes {
  static const home = '/';
  static const login = '/login';
  static const search = '/$searchRelative';
  static const searchRelative = 'search';
  static const results = '/$resultsRelative';
  static const resultsRelative = 'results';
  static const activities = '/$activitiesRelative';
  static const activitiesRelative = 'activities';
  static const booking = '/$bookingRelative';
  static const bookingRelative = 'booking';
  static String bookingWithId(int id) => '$booking/$id';
}
