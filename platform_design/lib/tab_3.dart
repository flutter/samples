import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            Expanded(
              child: Container(),
            ),
            PlatformWidget(
              androidBuilder: (BuildContext context, Widget child) {
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
              },
              iosBuilder: (BuildContext context, Widget child) {
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
              },
            ),
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
      navigationBar: CupertinoNavigationBar(),
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
