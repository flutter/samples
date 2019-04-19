import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

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
        children: <Widget>[
          Hero(
            tag: id,
            child: HeroAnimatingSongCard(
              song: song,
              color: color,
              heroAnimation: AlwaysStoppedAnimation(1),
            ),
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
          Container(
            height: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
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
                return SizedBox(
                  height: 95,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Row(
                      children: <Widget>[
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
                            children: <Widget>[
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
      child: DefaultTextStyle(
        style: CupertinoTheme.of(context).textTheme.textStyle,
        child: _buildBody(),
      ),
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