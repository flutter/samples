import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tab_4.dart' as tab4;
import 'utils.dart';

const tab3Title = 'Profile';
const tab3AndroidIcon = Icon(Icons.person);
const tab3IosIcon = Icon(CupertinoIcons.profile_circled);

const _logoutMessage = Text('You may check out any time you like, but you can never leave');

class Tab3 extends StatefulWidget {
  const Tab3({ Key key }) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Center(
                child: Text('😼', style: TextStyle(
                  fontSize: 92,
                  decoration: TextDecoration.none,
                )),
              ),
            ),
            PreferenceCard(
              header: 'MY INTENSITY PREFERENCE',
              content: '🔥',
            ),
            PreferenceCard(
              header: 'CURRENT MOOD',
              content: '🤘🏾🚀',
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
            Navigator.of(context, rootNavigator: true).push(
              CupertinoPageRoute(
                title: tab4.tab4Title,
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

class PreferenceCard extends StatelessWidget {
  const PreferenceCard({ this.header, this.content });

  final String header;
  final String content;
  @override
  Widget build(BuildContext context) {
    return PressableCard(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
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
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key key,
  }) : super(key: key);

  Widget _buildAndroid(BuildContext context, Widget child) {
    return RaisedButton(
      child: Text('LOG OUT', style: TextStyle(color: Colors.red)),
      onPressed: () {
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
