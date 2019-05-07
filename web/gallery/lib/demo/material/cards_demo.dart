// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/foundation.dart';
import 'package:flutter_web/material.dart';

import '../../gallery/demo.dart';

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class TravelDestination {
  const TravelDestination({
    this.assetName,
    this.assetPackage,
    this.title,
    this.description,
  });

  final String assetName;
  final String assetPackage;
  final String title;
  final List<String> description;

  bool get isValid =>
      assetName != null && title != null && description?.length == 3;
}

final List<TravelDestination> destinations = <TravelDestination>[
  const TravelDestination(
    assetName: 'places/india_thanjavur_market.png',
    assetPackage: _kGalleryAssetsPackage,
    title: 'Top 10 Cities to Visit in Tamil Nadu',
    description: <String>[
      'Number 10',
      'Thanjavur',
      'Thanjavur, Tamil Nadu',
    ],
  ),
  const TravelDestination(
    assetName: 'places/india_chettinad_silk_maker.png',
    assetPackage: _kGalleryAssetsPackage,
    title: 'Artisans of Southern India',
    description: <String>[
      'Silk Spinners',
      'Chettinad',
      'Sivaganga, Tamil Nadu',
    ],
  )
];

class TravelDestinationItem extends StatelessWidget {
  TravelDestinationItem({Key key, @required this.destination, this.shape})
      : assert(destination != null && destination.isValid),
        super(key: key);

  static const double height = 366.0;
  final TravelDestination destination;
  final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
        theme.textTheme.headline.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subhead;

    return Container(
      padding: const EdgeInsets.all(8.0),
      height: height,
      child: Card(
        shape: shape,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // photo and title
            SizedBox(
              height: 184.0,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        destination.title,
                        style: titleStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // description and share/explore buttons
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                child: DefaultTextStyle(
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: descriptionStyle,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // three line description
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          destination.description[0],
                          style:
                              descriptionStyle.copyWith(color: Colors.black54),
                        ),
                      ),
                      Text(destination.description[1]),
                      Text(destination.description[2]),
                    ],
                  ),
                ),
              ),
            ),
            // share, explore buttons
            ButtonTheme.bar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    child: const Text('SHARE'),
                    textColor: Colors.amber.shade500,
                    onPressed: () {/* do nothing */},
                  ),
                  FlatButton(
                    child: const Text('EXPLORE'),
                    textColor: Colors.amber.shade500,
                    onPressed: () {/* do nothing */},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardsDemo extends StatefulWidget {
  static const String routeName = '/material/cards';

  @override
  _CardsDemoState createState() => _CardsDemoState();
}

class _CardsDemoState extends State<CardsDemo> {
  ShapeBorder _shape;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return wrapScaffold('Cards Demo', context, _scaffoldKey,
        _buildContents(context), CardsDemo.routeName);
  }

  Widget _buildContents(BuildContext context) {
    return ListView(
        itemExtent: TravelDestinationItem.height,
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        children: destinations.map((TravelDestination destination) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            child: TravelDestinationItem(
              destination: destination,
              shape: _shape,
            ),
          );
        }).toList());
  }
}
