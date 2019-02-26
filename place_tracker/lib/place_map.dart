import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

import 'place.dart';
import 'place_details.dart';
import 'place_tracker_app.dart';

class PlaceMap extends StatefulWidget {
  const PlaceMap({
    Key key,
    this.center,
  }) : super(key: key);

  final LatLng center;

  @override
  PlaceMapState createState() => PlaceMapState();
}

class PlaceMapState extends State<PlaceMap> {
  static BitmapDescriptor _getPlaceMarkerIcon(PlaceCategory category) {
    switch (category) {
      case PlaceCategory.favorite:
        return BitmapDescriptor.fromAsset('assets/heart.png');
        break;
      case PlaceCategory.visited:
        return BitmapDescriptor.fromAsset('assets/visited.png');
        break;
      case PlaceCategory.wantToGo:
      default:
        return BitmapDescriptor.defaultMarker;
    }
  }

  static List<Place> _getPlacesForCategory(
      PlaceCategory category, List<Place> places) {
    return places.where((Place place) => place.category == category).toList();
  }

  GoogleMapController mapController;
  Map<Marker, Place> _markedPlaces = Map<Marker, Place>();
  Marker _pendingMarker;
  MapConfiguration _configuration;

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.onInfoWindowTapped.add(_onInfoWindowTapped);

    // Draw initial place markers on creation so that we have something
    // interesting to look at.
    final Map<Marker, Place> places = await _markPlaces();
    _zoomToFitPlaces(
      _getPlacesForCategory(
        AppState.of(context).selectedCategory,
        places.values.toList(),
      ),
    );
  }

  Future<Map<Marker, Place>> _markPlaces() async {
    await Future.wait(
        AppState.of(context).places.map((Place place) => _markPlace(place)));
    return _markedPlaces;
  }

  Future<void> _markPlace(Place place) async {
    final Marker marker = await mapController.addMarker(
      MarkerOptions(
        position: place.latLng,
        icon: _getPlaceMarkerIcon(place.category),
        infoWindowText: InfoWindowText(
          place.name,
          '${place.starRating} Star Rating',
        ),
        visible: place.category == AppState.of(context).selectedCategory,
      ),
    );
    _markedPlaces[marker] = place;
  }

  void _onInfoWindowTapped(Marker marker) {
    _pushPlaceDetailsScreen(_markedPlaces[marker]);
  }

  void _pushPlaceDetailsScreen(Place place) {
    assert(place != null);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return PlaceDetails(
          place: place,
          onChanged: (Place value) => _onPlaceChanged(value),
        );
      }),
    );
  }

  void _onPlaceChanged(Place value) {
    // Replace the place with the modified version.
    final List<Place> newPlaces = List.from(AppState.of(context).places);
    final int index =
        newPlaces.indexWhere((Place place) => place.id == value.id);
    newPlaces[index] = value;

    _updateExistingPlaceMarker(place: value);

    // Manually update our map configuration here since our map is already
    // updated with the new marker. Otherwise, the map would be reconfigured
    // in the main build method due to a modified AppState.
    _configuration = MapConfiguration(
      places: newPlaces,
      selectedCategory: AppState.of(context).selectedCategory,
    );

    AppState.updateWith(context, places: newPlaces);
  }

  Future<void> _updateExistingPlaceMarker({@required Place place}) async {
    Marker marker = _markedPlaces.keys
        .singleWhere((Marker value) => _markedPlaces[value].id == place.id);

    // Set marker visibility to false to ensure the info window is hidden. Once
    // the plugin fully supports the Google Maps API, use hideInfoWindow()
    // instead.
    await mapController.updateMarker(
      marker,
      MarkerOptions(
        visible: false,
      ),
    );
    await mapController.updateMarker(
      marker,
      MarkerOptions(
        infoWindowText: InfoWindowText(
          place.name,
          place.starRating != 0 ? '${place.starRating} Star Rating' : null,
        ),
        visible: true,
      ),
    );

    _markedPlaces[marker] = place;
  }

  void _switchSelectedCategory(PlaceCategory category) {
    AppState.updateWith(context, selectedCategory: category);
    _showPlacesForSelectedCategory(category);
  }

  Future<void> _showPlacesForSelectedCategory(PlaceCategory category) async {
    await Future.wait(
      _markedPlaces.keys.map(
        (Marker marker) => mapController.updateMarker(
              marker,
              MarkerOptions(
                visible: _markedPlaces[marker].category == category,
              ),
            ),
      ),
    );

    _zoomToFitPlaces(
        _getPlacesForCategory(category, _markedPlaces.values.toList()));
  }

  void _zoomToFitPlaces(List<Place> places) {
    // Default min/max values to latitude and longitude of center.
    double minLat = widget.center.latitude;
    double maxLat = widget.center.latitude;
    double minLong = widget.center.longitude;
    double maxLong = widget.center.longitude;

    for (Place place in places) {
      minLat = min(minLat, place.latitude);
      maxLat = max(maxLat, place.latitude);
      minLong = min(minLong, place.longitude);
      maxLong = max(maxLong, place.longitude);
    }

    mapController.animateCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
          southwest: LatLng(minLat, minLong),
          northeast: LatLng(maxLat, maxLong),
        ),
        48.0,
      ),
    );
  }

  void _onAddPlacePressed() async {
    Marker newMarker = await mapController.addMarker(
      MarkerOptions(
        position: LatLng(
          mapController.cameraPosition.target.latitude,
          mapController.cameraPosition.target.longitude,
        ),
        draggable: true,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      ),
    );
    setState(() {
      _pendingMarker = newMarker;
    });
  }

  void _confirmAddPlace(BuildContext context) async {
    if (_pendingMarker != null) {
      await mapController.updateMarker(
        _pendingMarker,
        MarkerOptions(
          icon: _getPlaceMarkerIcon(AppState.of(context).selectedCategory),
          infoWindowText: InfoWindowText('New Place', null),
          draggable: false,
        ),
      );

      // Create a new Place and map it to the marker we just added.
      final Place newPlace = Place(
        id: Uuid().v1(),
        latLng: _pendingMarker.options.position,
        name: _pendingMarker.options.infoWindowText.title,
        category: AppState.of(context).selectedCategory,
      );
      _markedPlaces[_pendingMarker] = newPlace;

      // Show a confirmation snackbar that has an action to edit the new place.
      Scaffold.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          content: const Text('New place added.',
              style: const TextStyle(fontSize: 16.0)),
          action: SnackBarAction(
            label: 'Edit',
            onPressed: () async {
              _pushPlaceDetailsScreen(newPlace);
            },
          ),
        ),
      );

      // Add the new place to the places stored in appState.
      final List<Place> newPlaces = List.from(AppState.of(context).places)
        ..add(newPlace);

      // Manually update our map configuration here since our map is already
      // updated with the new marker. Otherwise, the map would be reconfigured
      // in the main build method due to a modified AppState.
      _configuration = MapConfiguration(
        places: newPlaces,
        selectedCategory: AppState.of(context).selectedCategory,
      );

      AppState.updateWith(context, places: newPlaces);

      setState(() {
        _pendingMarker = null;
      });
    }
  }

  void _cancelAddPlace() {
    if (_pendingMarker != null) {
      mapController.removeMarker(_pendingMarker);
      setState(() {
        _pendingMarker = null;
      });
    }
  }

  void _onToggleMapTypePressed() {
    final MapType nextType = MapType.values[
        (mapController.options.mapType.index + 1) % MapType.values.length];

    mapController.updateMapOptions(
      GoogleMapOptions(mapType: nextType),
    );
  }

  Future<void> _maybeUpdateMapConfiguration() async {
    _configuration ??= MapConfiguration.of(AppState.of(context));
    final MapConfiguration newConfiguration =
        MapConfiguration.of(AppState.of(context));

    // Since we manually update [_configuration] when place or selectedCategory
    // changes come from the [place_map], we should only enter this if statement
    // when returning to the [place_map] after changes have been made from
    // [place_list].
    if (_configuration != newConfiguration && mapController != null) {
      if (_configuration.places == newConfiguration.places &&
          _configuration.selectedCategory !=
              newConfiguration.selectedCategory) {
        // If the configuration change is only a category change, just update
        // the marker visibilities.
        _showPlacesForSelectedCategory(newConfiguration.selectedCategory);
      } else {
        // At this point, we know the places have been updated from the list
        // view. We need to reconfigure the map to respect the updates.
        await Future.wait(
          newConfiguration.places
              .where((Place p) => !_configuration.places.contains(p))
              .map((Place value) => _updateExistingPlaceMarker(place: value)),
        );
        _zoomToFitPlaces(
          _getPlacesForCategory(
            newConfiguration.selectedCategory,
            newConfiguration.places,
          ),
        );
      }
      _configuration = newConfiguration;
    }
  }

  @override
  Widget build(BuildContext context) {
    _maybeUpdateMapConfiguration();

    return Builder(builder: (BuildContext context) {
      // We need this additional builder here so that we can pass its context to
      // _AddPlaceButtonBar's onSavePressed callback. This callback shows a
      // SnackBar and to do this, we need a build context that has Scaffold as
      // an ancestor.
      return Center(
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: onMapCreated,
              options: GoogleMapOptions(
                trackCameraPosition: true,
                cameraPosition: CameraPosition(
                  target: widget.center,
                  zoom: 11.0,
                ),
              ),
            ),
            _CategoryButtonBar(
              selectedPlaceCategory: AppState.of(context).selectedCategory,
              visible: _pendingMarker == null,
              onChanged: _switchSelectedCategory,
            ),
            _AddPlaceButtonBar(
              visible: _pendingMarker != null,
              onSavePressed: () => _confirmAddPlace(context),
              onCancelPressed: _cancelAddPlace,
            ),
            _MapFabs(
              visible: _pendingMarker == null,
              onAddPlacePressed: _onAddPlacePressed,
              onToggleMapTypePressed: _onToggleMapTypePressed,
            ),
          ],
        ),
      );
    });
  }
}

class _CategoryButtonBar extends StatelessWidget {
  const _CategoryButtonBar({
    Key key,
    @required this.selectedPlaceCategory,
    @required this.visible,
    @required this.onChanged,
  })  : assert(selectedPlaceCategory != null),
        assert(visible != null),
        assert(onChanged != null),
        super(key: key);

  final PlaceCategory selectedPlaceCategory;
  final bool visible;
  final ValueChanged<PlaceCategory> onChanged;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
        alignment: Alignment.bottomCenter,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: selectedPlaceCategory == PlaceCategory.favorite
                  ? Colors.green[700]
                  : Colors.lightGreen,
              child: const Text(
                'Favorites',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () => onChanged(PlaceCategory.favorite),
            ),
            RaisedButton(
              color: selectedPlaceCategory == PlaceCategory.visited
                  ? Colors.green[700]
                  : Colors.lightGreen,
              child: const Text(
                'Visited',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () => onChanged(PlaceCategory.visited),
            ),
            RaisedButton(
              color: selectedPlaceCategory == PlaceCategory.wantToGo
                  ? Colors.green[700]
                  : Colors.lightGreen,
              child: const Text(
                'Want To Go',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () => onChanged(PlaceCategory.wantToGo),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddPlaceButtonBar extends StatelessWidget {
  const _AddPlaceButtonBar({
    Key key,
    @required this.visible,
    @required this.onSavePressed,
    @required this.onCancelPressed,
  })  : assert(visible != null),
        assert(onSavePressed != null),
        assert(onCancelPressed != null),
        super(key: key);

  final bool visible;
  final VoidCallback onSavePressed;
  final VoidCallback onCancelPressed;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
        alignment: Alignment.bottomCenter,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              onPressed: onSavePressed,
            ),
            RaisedButton(
              color: Colors.red,
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              onPressed: onCancelPressed,
            ),
          ],
        ),
      ),
    );
  }
}

class _MapFabs extends StatelessWidget {
  const _MapFabs({
    Key key,
    @required this.visible,
    @required this.onAddPlacePressed,
    @required this.onToggleMapTypePressed,
  })  : assert(visible != null),
        assert(onAddPlacePressed != null),
        assert(onToggleMapTypePressed != null),
        super(key: key);

  final bool visible;
  final VoidCallback onAddPlacePressed;
  final VoidCallback onToggleMapTypePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(top: 12.0, right: 12.0),
      child: Visibility(
        visible: visible,
        child: Column(
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'add_place_button',
              onPressed: onAddPlacePressed,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              backgroundColor: Colors.green,
              child: const Icon(Icons.add_location, size: 36.0),
            ),
            SizedBox(height: 12.0),
            FloatingActionButton(
              heroTag: 'toggle_map_type_button',
              onPressed: onToggleMapTypePressed,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              mini: true,
              backgroundColor: Colors.green,
              child: const Icon(Icons.layers, size: 28.0),
            ),
          ],
        ),
      ),
    );
  }
}

class MapConfiguration {
  const MapConfiguration({
    @required this.places,
    @required this.selectedCategory,
  })  : assert(places != null),
        assert(selectedCategory != null);

  final List<Place> places;
  final PlaceCategory selectedCategory;

  @override
  int get hashCode => places.hashCode ^ selectedCategory.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other.runtimeType != runtimeType) {
      return false;
    }

    final MapConfiguration otherConfiguration = other;
    return otherConfiguration.places == places &&
        otherConfiguration.selectedCategory == selectedCategory;
  }

  static MapConfiguration of(AppState appState) {
    return MapConfiguration(
      places: appState.places,
      selectedCategory: appState.selectedCategory,
    );
  }
}
