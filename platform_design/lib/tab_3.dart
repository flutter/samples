import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tab_4.dart' as tab4;
import 'widgets.dart';

const tab3Title = 'Profile';
const tab3AndroidIcon = Icon(Icons.person);
const tab3IosIcon = Icon(CupertinoIcons.profile_circled);

class PreferenceCard extends StatelessWidget {
  const PreferenceCard({ this.header, this.content, this.preferenceChoices });

  final String header;
  final String content;
  final List<String> preferenceChoices;

  @override
  Widget build(BuildContext context) {
    return PressableCard(
      color: Colors.green,
      flattenAnimation: AlwaysStoppedAnimation(0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 120,
            width: 250,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  content,
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black12,
              height: 40,
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                header,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
      onPressed: () {
        showChoices(context, preferenceChoices);
      },
    );
  }
}

class Tab3 extends StatelessWidget {
  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text('😼', style: TextStyle(
                  fontSize: 80,
                  decoration: TextDecoration.none,
                )),
              ),
            ),
            PreferenceCard(
              header: 'MY INTENSITY PREFERENCE',
              content: '🔥',
              preferenceChoices: <String>[
                'Super heavy',
                'Dial it to 11',
                "Head bangin'",
                '1000W',
                'My neighbor hates me',
              ],
            ),
            PreferenceCard(
              header: 'CURRENT MOOD',
              content: '🤘🏾🚀',
              preferenceChoices: <String>[
                'Over the moon',
                'Basking in sunlight',
                'Hello fellow Martians',
                'Into the darkness',
              ],
            ),
            Expanded(
              child: Container(),
            ),
            new LogOutButton(),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // Non-shared code below because we're nesting tab 4 inside of tab 3 as a
  // button in the nav bar.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tab3Title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildIos(BuildContext context, Widget child) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: tab4.tab4IosIcon,
          onPressed: () {
            // We're pushing the settings page as a full page modal dialog
            // on top of the tab bar and everything.
            Navigator.of(context, rootNavigator: true).push(
              CupertinoPageRoute(
                title: tab4.tab4Title,
                fullscreenDialog: true,
                builder: (BuildContext context) => tab4.Tab4(),
              ),
            );
          },
        ),
      ),
      child: _buildBody(context),
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

class LogOutButton extends StatelessWidget {
  static const _logoutMessage = Text('You may check out any time you like, but you can never leave');

  // ===========================================================================
  // Non-shared code below because we're showing different interfaces. On
  // Android, we're showing an alert dialog with 2 buttons and on iOS,
  // we're showing an action sheet with 3 choices.
  //
  // This is a design choice and you may want to do something different in your
  // app.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context, Widget child) {
    return RaisedButton(
      child: Text('LOG OUT', style: TextStyle(color: Colors.red)),
      onPressed: () {
        // You should do something with the result of the dialog prompt in a
        // real app but this is just a demo.
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Log out?'),
              content: _logoutMessage,
              actions: <Widget>[
                FlatButton(
                  child: const Text('Go back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          }
        );
      },
    );
  }

  Widget _buildIos(BuildContext context, Widget child) {
    return CupertinoButton(
      color: CupertinoColors.destructiveRed,
      child: Text('Log out'),
      onPressed: () {
        // You should do something with the result of the action sheet prompt
        // in a real app but this is just a demo.
        showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) {
            return CupertinoActionSheet(
              title: Text('Log out?'),
              message: _logoutMessage,
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: const Text('Reprogram the night man'),
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: const Text('Go back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                child: const Text('Cancel'),
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            );
          },
        );
      },
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
