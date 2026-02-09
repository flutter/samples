import 'package:flutter/cupertino.dart';
import 'widget_detail_page.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(largeTitle: Text('Cupertino Gallery')),
          SliverFillRemaining(
            child: ListView(
              children: [
                CustomCupertinoListTile(title: 'Action Sheet'),
                CustomCupertinoListTile(title: 'Activity Indicator'),
                CustomCupertinoListTile(title: 'Alert Dialog'),
                CustomCupertinoListTile(title: 'Button'),
                CustomCupertinoListTile(title: 'Checkbox'),
                CustomCupertinoListTile(title: 'Context Menu'),
                CustomCupertinoListTile(title: 'Date Picker'),
                CustomCupertinoListTile(title: 'List Tile'),
                CustomCupertinoListTile(title: 'Picker'),
                CustomCupertinoListTile(title: 'Popup Surface'),
                CustomCupertinoListTile(title: 'Radio'),
                CustomCupertinoListTile(title: 'Scrollbar'),
                CustomCupertinoListTile(title: 'Search Text Field'),
                CustomCupertinoListTile(title: 'Segmented Control'),
                CustomCupertinoListTile(title: 'Sheet'),
                CustomCupertinoListTile(title: 'Slider'),
                CustomCupertinoListTile(title: 'Sliding Segmented Control'),
                CustomCupertinoListTile(title: 'Switch'),
                CustomCupertinoListTile(title: 'Text Field'),
                CustomCupertinoListTile(title: 'Text Theme'),
                CustomCupertinoListTile(title: 'Time Picker'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCupertinoListTile extends StatelessWidget {
  const CustomCupertinoListTile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute<void>(
            builder: (BuildContext context) {
              return WidgetDetailPage(title: title);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: CupertinoColors.separator)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text(title), const Icon(CupertinoIcons.forward)],
        ),
      ),
    );
  }
}
