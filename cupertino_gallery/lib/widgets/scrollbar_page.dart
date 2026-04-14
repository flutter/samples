import 'package:flutter/cupertino.dart';

class ScrollbarPage extends StatelessWidget {
  const ScrollbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Scrollbar')),
      child: CupertinoScrollbar(
        controller: controller,
        child: ListView.separated(
          controller: controller,
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return CupertinoListTile(title: Text('Item $index'));
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(height: 1, color: CupertinoColors.opaqueSeparator);
          },
        ),
      ),
    );
  }
}
