import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';
import 'place_stub_data.dart';
import 'place_util.dart';
import 'place_details.dart';

class PlaceMap extends StatefulWidget {
  @override
  PlaceMapState createState() => new PlaceMapState();
}

class PlaceMapState extends State<PlaceMap> {
  PlaceMapState();

  GoogleMapController mapController;
  final _center = const LatLng(45.521563, -122.677433);

  var _selectedPlaceCategory = PlaceCategory.FAVORITE;
  var _places = Map<Marker, Place>();
  var _pendingMarker;

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.onInfoWindowTapped.add(_onInfoWindowTapped);
    _selectedPlaceCategory = PlaceCategory.FAVORITE;
    // Add stub data on creation so we have something interesting to look at.
    _initializeStubPlaces().then((Map<Marker, Place> places) =>
        _zoomToFitPlaces(
            PlaceUtil.getPlacesForCategory(_selectedPlaceCategory, places)));
  }

  @override
  void dispose() {
    super.dispose();
    mapController?.onInfoWindowTapped?.remove(_onInfoWindowTapped);
  }

  void _onInfoWindowTapped(Marker marker) async {
    // Store Place from [PlaceDetails] page upon return to this screen.
    final returnPlace = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlaceDetails(_places[marker])),
    ) as Place;

    if (returnPlace != null) {
      _places[marker] = returnPlace;

      // Set marker visibility to false to ensure the info window is hidden. Once
      // the plugin fully supports the Google Maps API, use hideInfoWindow()
      // instead.
      await mapController.updateMarker(
          marker,
          MarkerOptions(
            visible: false,
          ));
      await mapController.updateMarker(
          marker,
          MarkerOptions(
            infoWindowText: InfoWindowText(
                returnPlace.name,
                returnPlace.starRating != 0
                    ? '${returnPlace.starRating.toString()} Star Rating'
                    : null),
            visible: true,
          ));
    }
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
        position: place.latlng,
        icon: PlaceUtil.getPlaceMarkerIcon(place.category),
        infoWindowText: InfoWindowText(
            place.name, '${place.starRating.toString()} Star Rating'),
        visible: place.category == _selectedPlaceCategory,
      ),
    );
    _places[marker] = place;
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
          ));
    });
    _zoomToFitPlaces(
        PlaceUtil.getPlacesForCategory(_selectedPlaceCategory, _places));
  }

  void _zoomToFitPlaces(List<Place> places) {
    // Default min/max values to latitude and longitude of center.
    var minLat = _center.latitude;
    var maxLat = _center.latitude;
    var minLong = _center.longitude;
    var maxLong = _center.longitude;
    places.forEach((Place place) {
      minLat = place.latitude < minLat ? place.latitude : minLat;
      maxLat = place.latitude > maxLat ? place.latitude : maxLat;
      minLong = place.longitude < minLong ? place.longitude : minLong;
      maxLong = place.longitude > maxLong ? place.longitude : maxLong;
    });
    mapController.animateCamera(CameraUpdate.newLatLngBounds(
        LatLngBounds(
            southwest: LatLng(minLat, minLong),
            northeast: LatLng(maxLat, maxLong)),
        48.0));
  }

  Widget _categoryButtonBar() {
    return Opacity(
      opacity: _pendingMarker != null ? 0.0 : 1.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: _selectedPlaceCategory == PlaceCategory.FAVORITE
                    ? Colors.green[700]
                    : Colors.lightGreen,
                child: Text("Favorites",
                    style: TextStyle(color: Colors.white, fontSize: 14.0)),
                onPressed: () => _updatePlaces(PlaceCategory.FAVORITE),
              ),
              RaisedButton(
                color: _selectedPlaceCategory == PlaceCategory.VISITED
                    ? Colors.green[700]
                    : Colors.lightGreen,
                child: Text("Visited",
                    style: TextStyle(color: Colors.white, fontSize: 14.0)),
                onPressed: () => _updatePlaces(PlaceCategory.VISITED),
              ),
              RaisedButton(
                color: _selectedPlaceCategory == PlaceCategory.WANT_TO_GO
                    ? Colors.green[700]
                    : Colors.lightGreen,
                child: Text("Want To Go",
                    style: TextStyle(color: Colors.white, fontSize: 14.0)),
                onPressed: () => _updatePlaces(PlaceCategory.WANT_TO_GO),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addPlaceButtonBar() {
    return Builder(builder: (BuildContext context) {
      return Opacity(
        opacity: _pendingMarker != null ? 1.0 : 0.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  child: Text("Save",
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  onPressed: () => _confirmAddPlace(context),
                ),
                RaisedButton(
                  color: Colors.red,
                  child: Text("Cancel",
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  onPressed: () => _cancelAddPlace(),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _addPlaceFab() {
    return Opacity(
      opacity: _pendingMarker != null ? 0.0 : 1.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            onPressed: _onAddPlaceFabPressed,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.green,
            child: Icon(Icons.add_location, size: 36.0),
          ),
        ),
      ),
    );
  }

  void _onAddPlaceFabPressed() async {
    Marker newMarker = await mapController.addMarker(MarkerOptions(
      position: LatLng(
        mapController.cameraPosition.target.latitude,
        mapController.cameraPosition.target.longitude,
      ),
      draggable: true,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
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
          ));
      setState(() {
        // Create a new Place and map it to the marker we just added.
        _places[_pendingMarker] = Place(
            latlng: _pendingMarker.options.position,
            name: _pendingMarker.options.infoWindowText.title,
            category: _selectedPlaceCategory);
        _pendingMarker = null;
        Scaffold.of(context).showSnackBar(new SnackBar(
          duration: Duration(seconds: 3),
          content: Text("New place added. Tap marker to edit details.",
              style: TextStyle(fontSize: 16.0)),
        ));
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                child: Icon(Icons.pin_drop, size: 30.0)),
            Text("Place Tracker"),
          ],
        ),
        backgroundColor: Colors.green[700],
      ),
      body: new Center(
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
            _addPlaceFab(),
            _categoryButtonBar(),
            _addPlaceButtonBar(),
          ],
        ),
      ),
    );
  }
}
