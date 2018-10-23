import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({
    Key key,
    @required this.place,
    @required this.onChanged,
  }) : assert(place != null),
       assert(onChanged != null),
       super(key: key);

  final Place place;
  final ValueChanged<Place> onChanged;

  @override
  PlaceDetailsState createState() => PlaceDetailsState();
}

class PlaceDetailsState extends State<PlaceDetails> {

  Place _place;
  GoogleMapController _mapController;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    _place = widget.place;
    _nameController.text = _place.name;
    _descriptionController.text = _place.description;
    return super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
      _mapController.addMarker(MarkerOptions(position: _place.latLng));
    });
  }

  Widget _detailsBody() {
    return ListView(
      padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
      children: <Widget>[
        _NameTextField(
          controller: _nameController,
          onChanged: (String value) {
            setState(() {
              _place = _place.copyWith(name: value);
            });
          },
        ),
        _DescriptionTextField(
          controller: _descriptionController,
          onChanged: (String value) {
            setState(() {
              _place = _place.copyWith(description: value);
            });
          },
        ),
        _StarBar(
          rating: _place.starRating,
          onChanged: (int value) {
            print(value);
            setState(() {
              _place = _place.copyWith(starRating: value);
            });
          },
        ),
        _Map(
          center: _place.latLng,
          mapController: _mapController,
          onMapCreated: _onMapCreated,
        ),
      ],
    );
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
              onPressed: () {
                widget.onChanged(_place);
                Navigator.pop(context);
              },
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

class _NameTextField extends StatelessWidget {
  _NameTextField({
    @required this.controller,
    @required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        style: TextStyle(fontSize: 20.0, color: Colors.black87),
        autocorrect: true,
        controller: controller,
        onChanged: (String value) {
          onChanged(value);
        },
      ),
    );
  }
}

class _DescriptionTextField extends StatelessWidget {
  _DescriptionTextField({
    @required this.controller,
    @required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
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
        controller: controller,
        onChanged: (String value) {
          onChanged(value);
        },
      ),
    );
  }
}

class _StarBar extends StatelessWidget {
  const _StarBar({
    Key key,
    @required this.rating,
    @required this.onChanged,
  }) : assert(rating != null && rating >= 0 && rating <= 5),
       super(key: key);

  static const int maxStars = 5;
  final int rating;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(maxStars, (int index) {
        return IconButton(
          icon: Icon(Icons.star),
          iconSize: 40.0,
          color: rating > index ? Colors.amber : Colors.grey[400],
          onPressed: () {
            onChanged(index + 1);
          },
        );
      }).toList(),
    );
  }
}

class _Map extends StatelessWidget {
  _Map({
    Key key,
    @required this.center,
    @required this.mapController,
    @required this.onMapCreated,
  }) : assert(center != null);

  final LatLng center;
  final GoogleMapController mapController;
  final ArgumentCallback<GoogleMapController> onMapCreated;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      elevation: 4.0,
      child: SizedBox(
        width: 340.0,
        height: 240.0,
        child: GoogleMap(
          onMapCreated: onMapCreated,
          options: GoogleMapOptions(
            cameraPosition: CameraPosition(
              target: center,
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
}