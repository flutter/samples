// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linting_tool/layout/adaptive.dart';
import 'package:linting_tool/pages/default_lints_page.dart';
import 'package:linting_tool/pages/home_page.dart';
import 'package:linting_tool/pages/saved_lints_page.dart';
import 'package:linting_tool/theme/colors.dart';

final navKey = GlobalKey<NavigatorState>();

class AdaptiveNav extends StatefulWidget {
  const AdaptiveNav({Key? key}) : super(key: key);

  @override
  _AdaptiveNavState createState() => _AdaptiveNavState();
}

class _AdaptiveNavState extends State<AdaptiveNav> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayLarge(context);
    const _navigationDestinations = <_Destination>[
      _Destination(
        textLabel: 'Home',
        icon: Icons.home_outlined,
        selectedIcon: Icons.home,
        destination: HomePage(),
      ),
      _Destination(
        textLabel: 'Saved Profiles',
        icon: Icons.save_outlined,
        selectedIcon: Icons.save,
        destination: SavedLintsPage(),
      ),
      _Destination(
        textLabel: 'Default Profiles',
        icon: Icons.featured_play_list_outlined,
        selectedIcon: Icons.featured_play_list,
        destination: DefaultLintsPage(),
      ),
    ];

    final _trailing = <String, IconData>{
      'About': Icons.info_outline,
    };

    return _NavView(
      extended: isDesktop,
      destinations: _navigationDestinations,
      trailing: _trailing,
    );
  }
}

class _NavView extends StatefulWidget {
  const _NavView({
    Key? key,
    required this.extended,
    required this.destinations,
    this.trailing,
  }) : super(key: key);

  final bool extended;
  final List<_Destination> destinations;
  final Map<String, IconData>? trailing;

  @override
  _NavViewState createState() => _NavViewState();
}

class _NavViewState extends State<_NavView> {
  late ValueNotifier<bool?> _isExtended;
  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _isExtended = ValueNotifier<bool?>(widget.extended);
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Linting Tool',
          style: textTheme.subtitle2!.copyWith(
            color: textTheme.bodyText1!.color,
          ),
        ),
        toolbarHeight: 38.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: Row(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                clipBehavior: Clip.antiAlias,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: ValueListenableBuilder<bool?>(
                      valueListenable: _isExtended,
                      builder: (context, value, child) {
                        var isSmallDisplay = isDisplaySmall(context);
                        return NavigationRail(
                          destinations: [
                            for (var destination in widget.destinations)
                              NavigationRailDestination(
                                icon: Icon(destination.icon),
                                selectedIcon: destination.selectedIcon != null
                                    ? Icon(destination.selectedIcon)
                                    : null,
                                label: Text(destination.textLabel),
                              ),
                          ],
                          extended: _isExtended.value! && !isSmallDisplay,
                          labelType: NavigationRailLabelType.none,
                          leading: _NavigationRailHeader(
                            extended: _isExtended,
                          ),
                          trailing: _NavigationRailTrailingSection(
                            trailingDestinations: widget.trailing!,
                          ),
                          selectedIndex: _selectedIndex,
                          onDestinationSelected: _onDestinationSelected,
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1340),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  switchOutCurve: Curves.easeOut,
                  switchInCurve: Curves.easeIn,
                  child: widget.destinations[_selectedIndex].destination,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationRailHeader extends StatelessWidget {
  const _NavigationRailHeader({
    required this.extended,
  });

  final ValueNotifier<bool?> extended;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final animation = NavigationRail.extendedAnimation(context);

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Align(
          alignment: AlignmentDirectional.centerStart,
          widthFactor: animation.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 56,
                child: Row(
                  children: [
                    const SizedBox(width: 6),
                    InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () {
                        extended.value = !extended.value!;
                      },
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: animation.value * math.pi,
                            child: const Icon(
                              Icons.arrow_left,
                              color: AppColors.white50,
                              size: 16,
                            ),
                          ),
                          const FlutterLogo(),
                          const SizedBox(width: 10),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            widthFactor: animation.value,
                            child: Opacity(
                              opacity: animation.value,
                              child: Text(
                                'Linting Tool',
                                style: textTheme.bodyText1!.copyWith(
                                  color: AppColors.white50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 18 * animation.value),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}

class _NavigationRailTrailingSection extends StatelessWidget {
  const _NavigationRailTrailingSection({
    required this.trailingDestinations,
  });

  final Map<String, IconData> trailingDestinations;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final navigationRailTheme = theme.navigationRailTheme;
    final animation = NavigationRail.extendedAnimation(context);

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Visibility(
          maintainAnimation: true,
          maintainState: true,
          visible: animation.value > 0,
          child: Opacity(
            opacity: animation.value,
            child: Align(
              widthFactor: animation.value,
              alignment: AlignmentDirectional.centerStart,
              child: SizedBox(
                height: 485,
                width: 256,
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const Divider(
                      color: AppColors.blue200,
                      thickness: 0.4,
                      indent: 14,
                      endIndent: 16,
                    ),
                    const SizedBox(height: 8),
                    for (var item in trailingDestinations.keys)
                      InkWell(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(36),
                        ),
                        onTap: () => _onTapped(context, item),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                Icon(
                                  trailingDestinations[item],
                                  color: AppColors.blue300,
                                ),
                                const SizedBox(width: 24),
                                Text(
                                  item,
                                  style: textTheme.bodyText1!.copyWith(
                                    color: navigationRailTheme
                                        .unselectedLabelTextStyle!.color,
                                  ),
                                ),
                                const SizedBox(height: 72),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onTapped(BuildContext context, String key) {
    switch (key) {
      case 'About':
        showAboutDialog(
          context: context,
          applicationIcon: const FlutterLogo(),
          children: [
            const Text(
              'A tool that helps you manage linter rules for your Flutter projects.',
            ),
          ],
        );
        break;
      default:
        break;
    }
  }
}

class _Destination {
  const _Destination({
    required this.destination,
    required this.textLabel,
    required this.icon,
    this.selectedIcon,
  });

  final String textLabel;
  final IconData icon;
  final IconData? selectedIcon;
  final Widget destination;
}
