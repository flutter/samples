import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;
  double _textSize = 1.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Settings'),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoListSection(
            header: const Text('Appearance'),
            children: [
              CupertinoListTile(
                title: const Text('Dark Mode'),
                trailing: CupertinoSwitch(
                  value: _darkMode,
                  onChanged: (bool value) {
                    setState(() {
                      _darkMode = value;
                    });
                  },
                ),
              ),
              CupertinoListTile(
                title: const Text('Text Size'),
                trailing: Text('${(_textSize * 100).toStringAsFixed(0)}%'),
              ),
              CupertinoSlider(
                value: _textSize,
                onChanged: (double value) {
                  setState(() {
                    _textSize = value;
                  });
                },
              ),
            ],
          ),
          CupertinoListSection(
            header: const Text('General'),
            children: [
              CupertinoListTile(
                title: const Text('About'),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              CupertinoListTile(
                title: const Text('Privacy'),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              CupertinoListTile(
                title: const Text('Help'),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              CupertinoListTile(
                title: const Text('Reset Settings'),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {
                  showCupertinoDialog<void>(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: const Text('Reset Settings'),
                      content: const Text(
                          'Are you sure you want to reset all settings?'),
                      actions: <CupertinoDialogAction>[
                        CupertinoDialogAction(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoDialogAction(
                          isDestructiveAction: true,
                          child: const Text('Reset'),
                          onPressed: () {
                            setState(() {
                              _darkMode = false;
                              _textSize = 1.0;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
