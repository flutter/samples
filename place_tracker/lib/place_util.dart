import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'place.dart';

class PlaceUtil {
  static BitmapDescriptor getPlaceMarkerIcon(PlaceCategory category) {
    // TODO(kenzieschmoll): use custom marker assets.
    switch (category) {
      case PlaceCategory.favorite:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
      case PlaceCategory.visited:
        return BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueViolet);
      case PlaceCategory.wantToGo:
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
        case PlaceCategory.favorite:
          favoritePlaces.add(poi);
          break;
        case PlaceCategory.visited:
          visitedPlaces.add(poi);
          break;
        case PlaceCategory.wantToGo:
        default:
          wantToGoPlaces.add(poi);
          break;
      }
    });

    switch (category) {
      case PlaceCategory.favorite:
        return favoritePlaces;
      case PlaceCategory.visited:
        return visitedPlaces;
      case PlaceCategory.wantToGo:
      default:
        return wantToGoPlaces;
    }
  }
}
