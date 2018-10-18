import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';

class PlaceDetails extends StatefulWidget {
  PlaceDetails(this._place);

  final Place _place;

  @override
  PlaceDetailsState createState() => PlaceDetailsState(_place);
}

class PlaceDetailsState extends State<PlaceDetails> {
  PlaceDetailsState(Place place) {
    this._place = place.copy();
  }

  Place _place;
  GoogleMapController mapController;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.addMarker(MarkerOptions(position: _place.latLng));
  }

  Widget _starBar() {
    final int maxStars = 5;
    final double iconSize = 40.0;

    Color getColorForStar(int starNumber) {
      return _place.starRating >= starNumber ? Colors.amber : Colors.grey[400];
    }

    Color star1Color = getColorForStar(1);
    Color star2Color = getColorForStar(2);
    Color star3Color = getColorForStar(3);
    Color star4Color = getColorForStar(4);
    Color star5Color = getColorForStar(5);

    void _updateStars(int rating) {
      setState(() {
        _place.starRating = rating;
        star1Color = getColorForStar(1);
        star2Color = getColorForStar(2);
        star3Color = getColorForStar(3);
        star4Color = getColorForStar(4);
        star5Color = getColorForStar(5);
      });
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            iconSize: iconSize,
            color: star1Color,
            onPressed: () {
              _updateStars(1);
            },
          ),
          IconButton(
            icon: Icon(Icons.star),
            iconSize: iconSize,
            color: star2Color,
            onPressed: () {
              _updateStars(2);
            },
          ),
          IconButton(
            icon: Icon(Icons.star),
            iconSize: iconSize,
            color: star3Color,
            onPressed: () {
              _updateStars(3);
            },
          ),
          IconButton(
            icon: Icon(Icons.star),
            iconSize: iconSize,
            color: star4Color,
            onPressed: () {
              _updateStars(4);
            },
          ),
          IconButton(
            icon: Icon(Icons.star),
            iconSize: iconSize,
            color: star5Color,
            onPressed: () {
              _updateStars(5);
            },
          ),
        ],
      ),
    );
  }

  Widget _map() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      elevation: 4.0,
      child: Container(
        width: 340.0,
        height: 240.0,
        child: GoogleMap(
          onMapCreated: onMapCreated,
          options: GoogleMapOptions(
            cameraPosition: CameraPosition(
              target: _place.latLng,
              zoom: 16.0,
            ),
            zoomGesturesEnabled: false,
            rotateGesturesEnabled: false,
            tiltGesturesEnabled: false,
            scrollGesturesEnabled: false,
          ),
        ),
      ),
    );
  }

  Widget _nameTextField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        style: TextStyle(fontSize: 20.0, color: Colors.black87),
        autocorrect: false,
        controller: _nameController,
        onChanged: (text) {
          setState(() {
            _place.name = text;
          });
        },
      ),
    );
  }

  Widget _descriptionTextField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Description',
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        style: TextStyle(fontSize: 20.0, color: Colors.black87),
        maxLines: null,
        autocorrect: true,
        controller: _descriptionController,
        onChanged: (text) {
          setState(() {
            _place.description = text;
          });
        },
      ),
    );
  }

  Widget _detailsBody() {
    return ListView(
      padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
      children: <Widget>[
        _nameTextField(),
        _descriptionTextField(),
        _starBar(),
        _map(),
      ],
    );
  }

  @override
  void initState() {
    _nameController.text = _place.name;
    _descriptionController.text = _place.description;
    return super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_place.name}'),
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
            child: IconButton(
              icon: Icon(Icons.save, size: 30.0),
              onPressed: () => Navigator.pop(context, _place),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _detailsBody(),
      ),
    );
  }
}
