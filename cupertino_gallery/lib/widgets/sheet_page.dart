import 'package:flutter/cupertino.dart';

class SheetPage extends StatelessWidget {
  const SheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Sheet')),
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Show Sheet'),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoSheetRoute<void>(
                builder: (BuildContext context) {
                  return CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(
                      middle: const Text('Sheet'),
                      trailing: GestureDetector(
                        child: const Icon(CupertinoIcons.xmark),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    child: const Center(
                      child: Text('This is a sheet'),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
