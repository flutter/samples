// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN cupertinoSliderDemo

class CupertinoSliderDemo extends StatefulWidget {
  @override
  _CupertinoSliderDemoState createState() => _CupertinoSliderDemoState();
}

class _CupertinoSliderDemoState extends State<CupertinoSliderDemo> {
  double _value = 25.0;
  double _discreteValue = 20.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text(GalleryLocalizations.of(context).demoCupertinoSliderTitle),
      ),
      child: DefaultTextStyle(
        style: CupertinoTheme.of(context).textTheme.textStyle,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoSlider(
                      value: _value,
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  MergeSemantics(
                    child: Text(
                      GalleryLocalizations.of(context)
                          .demoCupertinoSliderContinuous(
                        _value.toStringAsFixed(1),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoSlider(
                      value: _discreteValue,
                      min: 0.0,
                      max: 100.0,
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          _discreteValue = value;
                        });
                      },
                    ),
                  ),
                  MergeSemantics(
                    child: Text(
                      GalleryLocalizations.of(context)
                          .demoCupertinoSliderDiscrete(
                        _discreteValue.toStringAsFixed(1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// END
