import 'package:flutter/cupertino.dart';
import 'settings_page.dart';
import 'widgets_page.dart';

class GalleryHome extends StatelessWidget {
  const GalleryHome({
    super.key,
    required this.onThemeChange,
    required this.isDarkMode,
  });

  final ValueChanged<bool> onThemeChange;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet),
            label: 'Widgets',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return switch (index) {
              0 => const WidgetsPage(),
              1 => SettingsPage(
                    onThemeChange: onThemeChange,
                    isDarkMode: isDarkMode,
                  ),
              _ => const Center(child: Text('Widgets')),
            };
          },
        );
      },
    );
  }
}
