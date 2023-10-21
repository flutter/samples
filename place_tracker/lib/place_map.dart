// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import 'place.dart';
import 'place_tracker_app.dart';

class MapConfiguration {
  final List<Place> places;

  final PlaceCategory selectedCategory;

  const MapConfiguration({
    required this.places,
    required this.selectedCategory,
  });

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

    return other is MapConfiguration &&
        other.places == places &&
        other.selectedCategory == selectedCategory;
  }

  static MapConfiguration of(AppState appState) {
    return MapConfiguration(
      places: appState.places,
      selectedCategory: appState.selectedCategory,
    );
  }
}

class PlaceMap extends StatefulWidget {
  final LatLng? center;

  const PlaceMap({
    super.key,
    this.center,
  });

  @override
  State<PlaceMap> createState() => _PlaceMapState();
}

class _PlaceMapState extends State<PlaceMap> {
  Completer<GoogleMapController> mapController = Completer();

  MapType _currentMapType = MapType.normal;

  LatLng? _lastMapPosition;

  final Map<Marker, Place> _markedPlaces = <Marker, Place>{};

  final Set<Marker> _markers = {};

  Marker? _pendingMarker;

  MapConfiguration? _configuration;

  @override
  void initState() {
    super.initState();
    context.read<AppState>().addListener(_watchMapConfigurationChanges);
  }

  @override
  void dispose() {
    context.read<AppState>().removeListener(_watchMapConfigurationChanges);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _watchMapConfigurationChanges();
    var state = Provider.of<AppState>(context, listen: true);
    return Builder(builder: (context) {
      // We need this additional builder here so that we can pass its context to
      // _AddPlaceButtonBar's onSavePressed callback. This callback shows a
      // SnackBar and to do this, we need a build context that has Scaffold as
      // an ancestor.
      return Center(
        child: Stack(
          children: [
            GoogleMap(
              onMapCreated: onMapCreated,
              initialCameraPosition: CameraPosition(
                target: widget.center!,
                zoom: 11.0,
              ),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: (position) => _lastMapPosition = position.target,
            ),
            _CategoryButtonBar(
              selectedPlaceCategory: state.selectedCategory,
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

  Future<void> onMapCreated(GoogleMapController controller) async {
    if (!context.mounted) return;
    final appState = Provider.of<AppState>(context, listen: false);
    mapController.complete(controller);
    _lastMapPosition = widget.center;

    // Draw initial place markers on creation so that we have something
    // interesting to look at.
    var markers = <Marker>{};
    for (var place in appState.places) {
      markers.add(await _createPlaceMarker(place, appState.selectedCategory));
    }
    setState(() {
      _markers.addAll(markers);
    });

    // Zoom to fit the initially selected category.
    _zoomToFitSelectedCategory();
  }

  @override
  void didUpdateWidget(PlaceMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Zoom to fit the selected category.
    if (mounted) {
      _zoomToFitSelectedCategory();
    }
  }

  /// Applies zoom to fit the places of the selected category
  void _zoomToFitSelectedCategory() {
    _zoomToFitPlaces(
      _getPlacesForCategory(
        Provider.of<AppState>(context, listen: false).selectedCategory,
        _markedPlaces.values.toList(),
      ),
    );
  }

  void _cancelAddPlace() {
    if (_pendingMarker != null) {
      setState(() {
        _markers.remove(_pendingMarker);
        _pendingMarker = null;
      });
    }
  }

  Future<void> _confirmAddPlace(BuildContext context) async {
    if (!context.mounted) return;
    if (_pendingMarker != null) {
      // Create a new Place and map it to the marker we just added.
      final appState = Provider.of<AppState>(context, listen: false);
      final newPlace = Place(
        id: const Uuid().v1(),
        latLng: _pendingMarker!.position,
        name: _pendingMarker!.infoWindow.title!,
        category: appState.selectedCategory,
      );

      final scaffoldMessenger = ScaffoldMessenger.of(context);

      var placeMarker = await _getPlaceMarkerIcon(appState.selectedCategory);

      setState(() {
        final updatedMarker = _pendingMarker!.copyWith(
          iconParam: placeMarker,
          infoWindowParam: InfoWindow(
            title: 'New Place',
            snippet: null,
            onTap: () => context.go('/place/${newPlace.id}'),
          ),
          draggableParam: false,
        );

        _updateMarker(
          marker: _pendingMarker,
          updatedMarker: updatedMarker,
          place: newPlace,
        );

        _pendingMarker = null;
      });

      // Show a confirmation snackbar that has an action to edit the new place.
      scaffoldMessenger.showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 3),
          content:
              const Text('New place added.', style: TextStyle(fontSize: 16.0)),
          action: SnackBarAction(
            label: 'Edit',
            onPressed: () async {
              context.go('/place/${newPlace.id}');
            },
          ),
        ),
      );

      // Add the new place to the places stored in appState.
      final newPlaces = List<Place>.from(appState.places)..add(newPlace);

      appState.setPlaces(newPlaces);
    }
  }

  Future<Marker> _createPlaceMarker(
    Place place,
    PlaceCategory selectedCategory,
  ) async {
    final marker = Marker(
      markerId: MarkerId(place.latLng.toString()),
      position: place.latLng,
      infoWindow: InfoWindow(
        title: place.name,
        snippet: '${place.starRating} Star Rating',
        onTap: () => context.go('/place/${place.id}'),
      ),
      icon: await _getPlaceMarkerIcon(place.category),
      visible: place.category == selectedCategory,
    );
    _markedPlaces[marker] = place;
    return marker;
  }

  Future<void> _watchMapConfigurationChanges() async {
    final appState = context.read<AppState>();
    _configuration ??= MapConfiguration.of(appState);
    final newConfiguration = MapConfiguration.of(appState);

    // Since we manually update [_configuration] when place or selectedCategory
    // changes come from the [place_map], we should only enter this if statement
    // when returning to the [place_map] after changes have been made from
    // [place_list].
    if (_configuration != newConfiguration) {
      if (_configuration!.places == newConfiguration.places &&
          _configuration!.selectedCategory !=
              newConfiguration.selectedCategory) {
        // If the configuration change is only a category change, just update
        // the marker visibilities.
        await _showPlacesForSelectedCategory(newConfiguration.selectedCategory);
      } else {
        // At this point, we know the places have been updated from the list
        // view. We need to reconfigure the map to respect the updates.
        for (final place in newConfiguration.places) {
          final oldPlace =
              _configuration!.places.firstWhereOrNull((p) => p.id == place.id);
          if (oldPlace == null || oldPlace != place) {
            // New place or updated place.
            _updateExistingPlaceMarker(place: place);
          }
        }

        await _zoomToFitPlaces(
          _getPlacesForCategory(
            newConfiguration.selectedCategory,
            newConfiguration.places,
          ),
        );
      }
      _configuration = newConfiguration;
    }
  }

  Future<void> _onAddPlacePressed() async {
    setState(() {
      final newMarker = Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition!,
        infoWindow: const InfoWindow(title: 'New Place'),
        draggable: true,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      );
      _markers.add(newMarker);
      _pendingMarker = newMarker;
    });
  }

  void _onToggleMapTypePressed() {
    final nextType =
        MapType.values[(_currentMapType.index + 1) % MapType.values.length];

    setState(() {
      _currentMapType = nextType;
    });
  }

  Future<void> _showPlacesForSelectedCategory(PlaceCategory category) async {
    setState(() {
      for (var marker in List.of(_markedPlaces.keys)) {
        final place = _markedPlaces[marker]!;
        final updatedMarker = marker.copyWith(
          visibleParam: place.category == category,
        );

        _updateMarker(
          marker: marker,
          updatedMarker: updatedMarker,
          place: place,
        );
      }
    });

    await _zoomToFitPlaces(_getPlacesForCategory(
      category,
      _markedPlaces.values.toList(),
    ));
  }

  Future<void> _switchSelectedCategory(PlaceCategory category) async {
    Provider.of<AppState>(context, listen: false).setSelectedCategory(category);
    await _showPlacesForSelectedCategory(category);
  }

  void _updateExistingPlaceMarker({required Place place}) {
    var marker = _markedPlaces.keys
        .singleWhere((value) => _markedPlaces[value]!.id == place.id);

    setState(() {
      final updatedMarker = marker.copyWith(
        infoWindowParam: InfoWindow(
          title: place.name,
          snippet:
              place.starRating != 0 ? '${place.starRating} Star Rating' : null,
        ),
      );
      _updateMarker(marker: marker, updatedMarker: updatedMarker, place: place);
    });
  }

  void _updateMarker({
    required Marker? marker,
    required Marker updatedMarker,
    required Place place,
  }) {
    _markers.remove(marker);
    _markedPlaces.remove(marker);

    _markers.add(updatedMarker);
    _markedPlaces[updatedMarker] = place;
  }

  Future<void> _zoomToFitPlaces(List<Place> places) async {
    var controller = await mapController.future;

    // Default min/max values to latitude and longitude of center.
    var minLat = widget.center!.latitude;
    var maxLat = widget.center!.latitude;
    var minLong = widget.center!.longitude;
    var maxLong = widget.center!.longitude;

    for (var place in places) {
      minLat = min(minLat, place.latitude);
      maxLat = max(maxLat, place.latitude);
      minLong = min(minLong, place.longitude);
      maxLong = max(maxLong, place.longitude);
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.animateCamera(
        CameraUpdate.newLatLngBounds(
          LatLngBounds(
            southwest: LatLng(minLat, minLong),
            northeast: LatLng(maxLat, maxLong),
          ),
          48.0,
        ),
      );
    });
  }

  Future<BitmapDescriptor> _getPlaceMarkerIcon(PlaceCategory category) =>
      switch (category) {
        PlaceCategory.favorite => BitmapDescriptor.fromAssetImage(
            createLocalImageConfiguration(context, size: const Size.square(32)),
            'assets/heart.png'),
        PlaceCategory.visited => BitmapDescriptor.fromAssetImage(
            createLocalImageConfiguration(context, size: const Size.square(32)),
            'assets/visited.png'),
        PlaceCategory.wantToGo => Future.value(BitmapDescriptor.defaultMarker),
      };

  static List<Place> _getPlacesForCategory(
      PlaceCategory category, List<Place> places) {
    return places.where((place) => place.category == category).toList();
  }
}

class _AddPlaceButtonBar extends StatelessWidget {
  final bool visible;

  final VoidCallback onSavePressed;
  final VoidCallback onCancelPressed;

  const _AddPlaceButtonBar({
    required this.visible,
    required this.onSavePressed,
    required this.onCancelPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
        alignment: Alignment.bottomCenter,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
              onPressed: onSavePressed,
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(foregroundColor: Colors.red),
              onPressed: onCancelPressed,
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryButtonBar extends StatelessWidget {
  final PlaceCategory selectedPlaceCategory;
  final bool visible;
  final ValueChanged<PlaceCategory> onChanged;

  const _CategoryButtonBar({
    required this.selectedPlaceCategory,
    required this.visible,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
        alignment: Alignment.bottomCenter,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor:
                      selectedPlaceCategory == PlaceCategory.favorite
                          ? Colors.green[700]
                          : Colors.lightGreen),
              child: const Text(
                'Favorites',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () => onChanged(PlaceCategory.favorite),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor:
                      selectedPlaceCategory == PlaceCategory.visited
                          ? Colors.green[700]
                          : Colors.lightGreen),
              child: const Text(
                'Visited',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () => onChanged(PlaceCategory.visited),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor:
                      selectedPlaceCategory == PlaceCategory.wantToGo
                          ? Colors.green[700]
                          : Colors.lightGreen),
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

class _MapFabs extends StatelessWidget {
  final bool visible;
  final VoidCallback onAddPlacePressed;
  final VoidCallback onToggleMapTypePressed;

  const _MapFabs({
    required this.visible,
    required this.onAddPlacePressed,
    required this.onToggleMapTypePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(top: 12.0, right: 12.0),
      child: Visibility(
        visible: visible,
        child: Column(
          children: [
            FloatingActionButton(
              heroTag: 'add_place_button',
              onPressed: onAddPlacePressed,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              child: const Icon(Icons.add_location, size: 36.0),
            ),
            const SizedBox(height: 12.0),
            FloatingActionButton(
              heroTag: 'toggle_map_type_button',
              onPressed: onToggleMapTypePressed,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              mini: true,
              child: const Icon(Icons.layers, size: 28.0),
            ),
          ],
        ),
      ),
    );
  }
}
