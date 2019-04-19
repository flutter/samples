import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

const tab4Title = 'Settings';
const tab4AndroidIcon = Icon(Icons.settings);
const tab4IosIcon = Icon(CupertinoIcons.gear);

class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  bool switch1 = false;
  bool switch2 = true;
  bool switch3 = true;
  bool switch4 = true;
  bool switch5 = true;
  bool switch6 = false;
  bool switch7 = true;

  Widget _buildList() {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 24)),
        ListTile(
          title: Text('Send me marketing emails'),
          // The Material switch has a platform adaptive constructor.
          trailing: Switch.adaptive(
            value: switch1,
            onChanged: (bool value) => setState(() => switch1 = value),
          ),
        ),
        ListTile(
          title: Text('Enable notifications'),
          trailing: Switch.adaptive(
            value: switch2,
            onChanged: (bool value) => setState(() => switch2 = value),
          ),
        ),
        ListTile(
          title: Text('Remind me to rate this app'),
          trailing: Switch.adaptive(
            value: switch3,
            onChanged: (bool value) => setState(() => switch3 = value),
          ),
        ),
        ListTile(
          title: Text('Background song refresh'),
          trailing: Switch.adaptive(
            value: switch4,
            onChanged: (bool value) => setState(() => switch4 = value),
          ),
        ),
        ListTile(
          title: Text('Share my usage data with third-parties'),
          trailing: Switch.adaptive(
            value: switch5,
            onChanged: (bool value) => setState(() => switch5 = value),
          ),
        ),
        ListTile(
          title: Text('Advertisement based on my interest'),
          trailing: Switch.adaptive(
            value: switch6,
            onChanged: (bool value) => setState(() => switch6 = value),
          ),
        ),
        ListTile(
          title: Text('Find friends from my contact list'),
          trailing: Switch.adaptive(
            value: switch7,
            onChanged: (bool value) => setState(() => switch7 = value),
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // Non-shared code below because we're using different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tab4Title),
      ),
      body: _buildList(),
    );
  }

  Widget _buildIos(BuildContext context, Widget child) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: _buildList(),
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
