import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';
import 'stub_data.dart';
import 'place_details.dart';

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
    // TODO(kenzieschmoll): use custom marker assets.
    double markerHue;
    switch (category) {
      case PlaceCategory.favorite:
        markerHue = BitmapDescriptor.hueRed;
        break;
      case PlaceCategory.visited:
        markerHue = BitmapDescriptor.hueViolet;
        break;
      case PlaceCategory.wantToGo:
      default:
        markerHue = BitmapDescriptor.hueAzure;
    }
    return BitmapDescriptor.defaultMarkerWithHue(markerHue);
  }

  static List<Place> _getPlacesForCategory(PlaceCategory category, Map<Marker, Place> places) {
    return places.values.where((Place place) => place.category == category).toList();
  }

  GoogleMapController mapController;
  PlaceCategory _selectedPlaceCategory = PlaceCategory.favorite;
  Map<Marker, Place> _places = Map<Marker, Place>();
  Marker _pendingMarker;

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.onInfoWindowTapped.add(_onInfoWindowTapped);

    // Add stub data on creation so we have something interesting to look at.
    final Map<Marker, Place> places = await _initializeStubPlaces();
    _zoomToFitPlaces(_getPlacesForCategory(_selectedPlaceCategory, places));
  }

  Future<Map<Marker, Place>> _initializeStubPlaces() async {
    await Future.wait(StubData.places.map((Place place) => _initializeStubPlace(place)));
    return _places;
  }

  Future<void> _initializeStubPlace(Place place) async {
    final Marker marker = await mapController.addMarker(
      MarkerOptions(
        position: place.latLng,
        icon: _getPlaceMarkerIcon(place.category),
        infoWindowText: InfoWindowText(
          place.name,
          '${place.starRating} Star Rating',
        ),
        visible: place.category == _selectedPlaceCategory,
      ),
    );
    _places[marker] = place;
  }

  void _onInfoWindowTapped(Marker marker) async {
    _pushPlaceDetailsScreen(marker);
  }

  Future<void> _pushPlaceDetailsScreen(Marker marker) async {
    assert(marker != null);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return PlaceDetails(
          place: _places[marker],
          onChanged: (Place value) {
            _updatePlaceAndMarker(value, marker);
          },
        );
      }),
    );
  }

  Future<void> _updatePlaceAndMarker(Place place, Marker marker) async {
    _places[marker] = place;

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
          place.starRating != 0
            ? '${place.starRating} Star Rating'
            : null,
        ),
        visible: true,
      ),
    );
  }

  void _updatePlaces(PlaceCategory category) {
    setState(() {
      _selectedPlaceCategory = category;
      _showPlacesForSelectedCategory();
    });
  }

  void _showPlacesForSelectedCategory() {
    _places.forEach((Marker marker, Place place) {
      mapController.updateMarker(
        marker,
        MarkerOptions(
          visible: place.category == _selectedPlaceCategory,
        ),
      );
    });
    _zoomToFitPlaces(_getPlacesForCategory(_selectedPlaceCategory, _places));
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
          icon: _getPlaceMarkerIcon(_selectedPlaceCategory),
          infoWindowText: InfoWindowText('New Place', null),
          draggable: false,
        ),
      );

      // Store a reference to the new marker so that we can pass it to the
      // snackbar action. We cannot pass [_pendingMarker] since it will get
      // reset to null.
      Marker newMarker = _pendingMarker;
      Scaffold.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          content: const Text(
            'New place added.',
            style: const TextStyle(fontSize: 16.0)
          ),
          action: SnackBarAction(
            label: 'Edit',
            onPressed: () async {
              _pushPlaceDetailsScreen(newMarker);
            },
          ),
        ),
      );

      setState(() {
        // Create a new Place and map it to the marker we just added.
        _places[_pendingMarker] = Place(
          latLng: _pendingMarker.options.position,
          name: _pendingMarker.options.infoWindowText.title,
          category: _selectedPlaceCategory,
        );
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
    final MapType nextType =
      MapType.values[(mapController.options.mapType.index + 1) % MapType.values.length];

    mapController.updateMapOptions(
      GoogleMapOptions(mapType: nextType),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
              child: Icon(Icons.pin_drop, size: 24.0),
            ),
            Text('Place Tracker'),
          ],
        ),
        backgroundColor: Colors.green[700],
      ),
      // We need this additional builder here so that we can pass its context to
      // _AddPlaceButtonBar's onSavePressed callback. This callback shows a
      // SnackBar and to do this, we need a build context that has Scaffold as
      // an ancestor.
      body: Builder(builder: (BuildContext context) {
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
                selectedPlaceCategory: _selectedPlaceCategory,
                visible: _pendingMarker == null,
                onChanged: _updatePlaces,
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
      }),
    );
  }
}

class _CategoryButtonBar extends StatelessWidget {
  const _CategoryButtonBar({
    Key key,
    @required this.selectedPlaceCategory,
    @required this.visible,
    @required this.onChanged,
  }) : assert(selectedPlaceCategory != null),
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

class  _AddPlaceButtonBar extends StatelessWidget {
  const _AddPlaceButtonBar({
    Key key,
    @required this.visible,
    @required this.onSavePressed,
    @required this.onCancelPressed,
  }) : assert(visible != null),
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
  }) : assert(visible != null),
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