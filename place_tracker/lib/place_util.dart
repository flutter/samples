import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'place.dart';

class PlaceUtil {
  static BitmapDescriptor getPlaceMarkerIcon(PlaceCategory category) {
    // TODO(kenzieschmoll): use custom marker assets.
    switch (category) {
      case PlaceCategory.FAVORITE:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
      case PlaceCategory.VISITED:
        return BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueViolet);
      case PlaceCategory.WANT_TO_GO:
      default:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure);
    }
  }

  static List<Place> getPlacesForCategory(
      PlaceCategory category, Map<Marker, Place> places) {
    List<Place> favoritePlaces = List<Place>();
    List<Place> visitedPlaces = List<Place>();
    List<Place> wantToGoPlaces = List<Place>();
    places.forEach((Marker marker, Place poi) {
      switch (poi.category) {
        case PlaceCategory.FAVORITE:
          favoritePlaces.add(poi);
          break;
        case PlaceCategory.VISITED:
          visitedPlaces.add(poi);
          break;
        case PlaceCategory.WANT_TO_GO:
        default:
          wantToGoPlaces.add(poi);
          break;
      }
    });

    switch (category) {
      case PlaceCategory.FAVORITE:
        return favoritePlaces;
      case PlaceCategory.VISITED:
        return visitedPlaces;
      case PlaceCategory.WANT_TO_GO:
      default:
        return wantToGoPlaces;
    }
  }
}
