import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'place.dart';

class PlaceList extends StatefulWidget {
  const PlaceList({
    @required this.places,
    @required this.selectedCategory,
    @required this.onCategoryChanged,
    Key key,
  }) : assert(places != null),
        super(key: key);

  final List<Place> places;
  final PlaceCategory selectedCategory;
  final ValueChanged<PlaceCategory> onCategoryChanged;

  @override
  PlaceListState createState() => PlaceListState();
}

class PlaceListState extends State<PlaceList> {

  ScrollController _scrollController = ScrollController();

  void _onCategoryChanged(PlaceCategory newCategory) {
    _scrollController.jumpTo(0.0);
    widget.onCategoryChanged(newCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ListCategoryButtonBar(
          selectedCategory: widget.selectedCategory,
          onCategoryChanged: (value) => _onCategoryChanged(value),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            controller: _scrollController,
            shrinkWrap: true,
            children: widget.places.map((Place place) => _PlaceListTile(place: place)).toList(),
          ),
        ),
      ],
    );
  }
}

class _PlaceListTile extends StatelessWidget {
  const _PlaceListTile({
    Key key,
    @required this.place
  }) : assert(place != null),
        super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      place.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      maxLines: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(5, (int index) {
                        return Icon(Icons.star,
                          size: 28.0,
                          color: place.starRating > index ? Colors.amber : Colors.grey[400],
                        );
                      }).toList(),
                    ),
                    Text(
                      place.description != null ? place.description : '',
                      style: Theme.of(context).textTheme.subhead,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            _Map(center: place.latLng),
          ],
        ),
        Divider(
          height: 36.0,
          color: Colors.grey[700],
        ),
      ],
    );
  }
}

class _Map extends StatelessWidget {
  const _Map({
    @required this.center,
    Key key,
  }) : assert(center != null),
       super(key: key);

  final LatLng center;

  _onMapCreated(GoogleMapController controller) {
    controller.addMarker(
      MarkerOptions(
        position: center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      width: 160.0,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        options: GoogleMapOptions(
          cameraPosition: CameraPosition(
            target: center,
            zoom: 17.0,
          ),
          zoomGesturesEnabled: false,
          rotateGesturesEnabled: false,
          tiltGesturesEnabled: false,
          scrollGesturesEnabled: false,
        ),
      ),
    );
  }
}

class _ListCategoryButtonBar extends StatelessWidget {
  const _ListCategoryButtonBar({
    @required this.selectedCategory,
    @required this.onCategoryChanged,
    Key key,
  })
      : assert(selectedCategory != null),
        assert(onCategoryChanged != null),
        super(key: key);

  final PlaceCategory selectedCategory;
  final ValueChanged<PlaceCategory> onCategoryChanged;

  Widget _buildButtonForCategory(PlaceCategory category) {
    String _buttonText;
    switch (category) {
      case PlaceCategory.favorite:
        _buttonText = 'Favorites';
        break;
      case PlaceCategory.visited:
        _buttonText = 'Visited';
        break;
      case PlaceCategory.wantToGo:
        _buttonText = 'Want To Go';
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: selectedCategory == category ? Colors.blue : Colors.transparent,
          ),
        ),
      ),
      child: ButtonTheme(
        height: 50.0,
        child: FlatButton(
          child: Text(
            _buttonText,
            style: TextStyle(
              fontSize: selectedCategory == category ? 20.0 : 18.0,
              color: selectedCategory == category ? Colors.blue : Colors.black87,
            ),
          ),
          onPressed: () => onCategoryChanged(category),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonForCategory(PlaceCategory.favorite),
        _buildButtonForCategory(PlaceCategory.visited),
        _buildButtonForCategory(PlaceCategory.wantToGo),
      ],
    );
  }
}
