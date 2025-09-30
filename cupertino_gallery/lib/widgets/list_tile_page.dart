import 'package:flutter/cupertino.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('List Tile')),
      child: Center(
        child: ListView(
          children: [
            CupertinoListSection(
              children: [
                CupertinoListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(CupertinoIcons.info),
                  trailing: Icon(CupertinoIcons.forward),
                ),
                CupertinoListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(CupertinoIcons.person),
                  trailing: Icon(CupertinoIcons.forward),
                ),
                CupertinoListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(CupertinoIcons.wifi),
                  trailing: Icon(CupertinoIcons.forward),
                ),
              ],
            ),
            CupertinoListSection(
              children: [
                CupertinoListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(CupertinoIcons.search),
                  trailing: Icon(CupertinoIcons.forward),
                ),
                CupertinoListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(CupertinoIcons.heart_fill),
                  trailing: Icon(CupertinoIcons.forward),
                ),
                CupertinoListTile(
                  title: Text('Title'),
                  subtitle: Text('Subtitle'),
                  leading: Icon(CupertinoIcons.ant),
                  trailing: Icon(CupertinoIcons.forward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
