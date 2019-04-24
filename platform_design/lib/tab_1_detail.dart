import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

// Page shown when a card in tab 1 is tapped.
//
// On Android, this page sits on top of your app. On iOS, this page is on top of
// tab 1's content but is below the tab bar itself.
class Tab1Detail extends StatelessWidget {
  const Tab1Detail({ this.id, this.song, this.color });

  final int id;
  final String song;
  final Color color;

  Widget _buildBody() {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: id,
            child: HeroAnimatingSongCard(
              song: song,
              color: color,
              heroAnimation: AlwaysStoppedAnimation(1),
            ),
            // We're using a flightShuttleBuilder to specify the exact widget
            // to build while the hero transition is mid-flight.
            //
            // It could either be specified here or in Tab1.
            flightShuttleBuilder: (
              BuildContext context,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext,
            ) {
              return HeroAnimatingSongCard(
                song: song,
                color: color,
                heroAnimation: animation,
              );
            },
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, top: 16, bottom: 8),
                    child: Text('You might also like:', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                  );
                }
                // Just a bunch of boxes that simulates loading video choices.
                return SizedBox(
                  height: 95,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          color: Colors.grey[400],
                          width: 130,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 9,
                                margin: EdgeInsets.only(right: 60),
                                color: Colors.grey[300],
                              ),
                              Container(
                                height: 9,
                                margin: EdgeInsets.only(right: 20, top: 8),
                                color: Colors.grey[300],
                              ),
                              Container(
                                height: 9,
                                margin: EdgeInsets.only(right: 40, top: 8),
                                color: Colors.grey[300],
                              ),
                              Container(
                                height: 9,
                                margin: EdgeInsets.only(right: 80, top: 8),
                                color: Colors.grey[300],
                              ),
                              Container(
                                height: 9,
                                margin: EdgeInsets.only(right: 50, top: 8),
                                color: Colors.grey[300],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // Non-shared code below because we're using different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(title: Text(song)),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context, Widget child) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(song),
        previousPageTitle: 'Songs',
      ),
      child: _buildBody(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
