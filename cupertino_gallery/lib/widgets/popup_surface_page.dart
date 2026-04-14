import 'package:flutter/cupertino.dart';

class PopupSurfacePage extends StatelessWidget {
  const PopupSurfacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Popup Surface'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Show Popup Surface'),
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) {
                return CupertinoPopupSurface(
                  child: Container(
                    color: CupertinoColors.white,
                    width: 200,
                    height: 200,
                    child: const Center(
                      child: Text('This is a popup surface.'),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
