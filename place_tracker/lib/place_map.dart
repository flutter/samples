import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';
import 'place_stub_data.dart';
import 'place_util.dart';
import 'place_details.dart';

class PlaceMap extends StatefulWidget {
  @override
  PlaceMapState createState() => PlaceMapState();
}

class PlaceMapState extends State<PlaceMap> {

  final LatLng _center = const LatLng(45.521563, -122.677433);

  GoogleMapController mapController;
  PlaceCategory _selectedPlaceCategory;
  Map<Marker, Place> _places = Map<Marker, Place>();
  Marker _pendingMarker;

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.onInfoWindowTapped.add(_onInfoWindowTapped);

    // Add stub data on creation so we have something interesting to look at.
    _initializeStubPlaces().then((Map<Marker, Place> places) =>
      _zoomToFitPlaces(
        PlaceUtil.getPlacesForCategory(_selectedPlaceCategory, places),
      ),
    );
  }

  Future<Map<Marker, Place>> _initializeStubPlaces() async {
    for (Place place in PlaceStubData.places) {
      await _initializeStubPlace(place);
    }
    return _places;
  }

  Future<void> _initializeStubPlace(Place place) async {
    Marker marker = await mapController.addMarker(
      MarkerOptions(
        position: place.latLng,
        icon: PlaceUtil.getPlaceMarkerIcon(place.category),
        infoWindowText: InfoWindowText(
          place.name,
          '${place.starRating.toString()} Star Rating',
        ),
        visible: place.category == _selectedPlaceCategory,
      ),
    );
    _places[marker] = place;
  }

  @override
  void dispose() {
    super.dispose();
    mapController?.onInfoWindowTapped?.remove(_onInfoWindowTapped);
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
            ? '${place.starRating.toString()} Star Rating'
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
    _zoomToFitPlaces(
      PlaceUtil.getPlacesForCategory(_selectedPlaceCategory, _places),
    );
  }

  void _zoomToFitPlaces(List<Place> places) {
    // Default min/max values to latitude and longitude of center.
    double minLat = _center.latitude;
    double maxLat = _center.latitude;
    double minLong = _center.longitude;
    double maxLong = _center.longitude;
    places.forEach((Place place) {
      minLat = place.latitude < minLat ? place.latitude : minLat;
      maxLat = place.latitude > maxLat ? place.latitude : maxLat;
      minLong = place.longitude < minLong ? place.longitude : minLong;
      maxLong = place.longitude > maxLong ? place.longitude : maxLong;
    });
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

  void _onAddPlaceFabPressed() async {
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
          icon: PlaceUtil.getPlaceMarkerIcon(_selectedPlaceCategory),
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
          content: Text(
            'New place added.',
            style: TextStyle(fontSize: 16.0)
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

  @override
  void initState() {
    _selectedPlaceCategory = PlaceCategory.favorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
              child: Icon(Icons.pin_drop, size: 24.0),
            ),
            Text('Place Tracker'),
          ],
        ),
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: onMapCreated,
              options: GoogleMapOptions(
                trackCameraPosition: true,
                cameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            _CategoryButtonBar(
              selectedPlaceCategory: _selectedPlaceCategory,
              visible: _pendingMarker == null,
              onChanged: (PlaceCategory value) => _updatePlaces(value),
            ),
            _AddPlaceButtonBar(
              visible: _pendingMarker != null,
              onSavePressed: _confirmAddPlace,
              onCancelPressed: _cancelAddPlace,
            ),
            _AddPlaceFab(
              visible: _pendingMarker == null,
              onPressed: _onAddPlaceFabPressed,
            ),
          ],
        ),
      ),
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
    return Opacity(
      opacity: visible ? 1.0 : 0.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: selectedPlaceCategory == PlaceCategory.favorite
                  ? Colors.green[700]
                  : Colors.lightGreen,
                child: Text(
                  'Favorites',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                onPressed: () => onChanged(PlaceCategory.favorite),
              ),
              RaisedButton(
                color: selectedPlaceCategory == PlaceCategory.visited
                  ? Colors.green[700]
                  : Colors.lightGreen,
                child: Text(
                  'Visited',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                onPressed: () => onChanged(PlaceCategory.visited),
              ),
              RaisedButton(
                color: selectedPlaceCategory == PlaceCategory.wantToGo
                  ? Colors.green[700]
                  : Colors.lightGreen,
                child: Text(
                  'Want To Go',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
                onPressed: () => onChanged(PlaceCategory.wantToGo),
              ),
            ],
          ),
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
  final ArgumentCallback<BuildContext> onSavePressed;
  final VoidCallback onCancelPressed;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return Opacity(
        opacity: visible ? 1.0 : 0.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  onPressed: () => onSavePressed(context),
                ),
                RaisedButton(
                  color: Colors.red,
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  onPressed: onCancelPressed,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class _AddPlaceFab extends StatelessWidget {
  const _AddPlaceFab({
    Key key,
    @required this.visible,
    @required this.onPressed,
  }) : assert(visible != null),
        assert(onPressed != null),
        super(key: key);

  final bool visible;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: visible ? 1.0 : 0.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            onPressed: onPressed,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.green,
            child: Icon(Icons.add_location, size: 36.0),
          ),
        ),
      ),
    );
  }
}