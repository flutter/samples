import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class SongDetailTab extends StatelessWidget {
  const SongDetailTab({this.id, this.song, this.color});

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
            // This app uses a flightShuttleBuilder to specify the exact widget
            // to build while the hero transition is mid-flight.
            //
            // It could either be specified here or in SongsTab.
            flightShuttleBuilder: (context, animation, flightDirection,
                fromHeroContext, toHeroContext) {
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
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 16, bottom: 8),
                    child: Text(
                      'You might also like:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }
                // Just a bunch of boxes that simulates loading song choices.
                return SongPlaceholderTile();
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

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(song)),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(song),
        previousPageTitle: 'Songs',
      ),
      child: _buildBody(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
