import 'package:ai_recipe_generation/util/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'features/prompt/widgets/app_info_dialog_widget.dart';
import 'theme.dart';
import 'widgets/appbar_shape_border.dart';

class AnimatedAppBar extends StatelessWidget {
  const AnimatedAppBar({
    super.key,
    required this.scrollController,
    required this.textStyle,
    required this.tabController,
  });

  final ScrollController scrollController;
  final double collapsedHeight = 100;
  final double expandedHeight = 300;
  final double avatarSize = 50;
  final TextStyle textStyle;
  final TabController tabController;

  String get headerText {
    return switch (tabController.index) {
      0 => 'Create a recipe',
      1 => 'Saved recipes',
      2 => 'Settings',
      _ => 'Uh oh!',
    };
  }

  String get helperText {
    return switch (tabController.index) {
      0 =>
        "Tell me what ingredients you have and what you're feelin', and I'll create a recipe for you!",
      1 => "These are all my saved recipes created by Chef Noodle.",
      2 => 'Settings',
      _ => 'Uh oh!',
    };
  }

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        return SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          forceElevated: true,
          elevation: 2,
          shadowColor: Colors.black,
          expandedHeight: expandedHeight,
          collapsedHeight: collapsedHeight,
          backgroundColor: Theme.of(context).primaryColor,
          shape: const AppBarShapeBorder(50),
          title: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: avatarSize,
                    height: avatarSize,
                    child: SvgPicture.asset(
                      'assets/chef_cat.svg',
                      semanticsLabel: 'Chef cat icon',
                    ),
                  ),
                  const SizedBox(
                    width: MarketplaceTheme.spacing1,
                  ),
                  if (scrollController.positions.isNotEmpty &&
                      scrollController.offset < 200)
                    Text(
                      "Meowdy! Let's get cooking!",
                      style: MarketplaceTheme.heading3,
                    ),
                  if (scrollController.positions.isNotEmpty &&
                      scrollController.offset > 200)
                    Text(
                      headerText,
                      style: MarketplaceTheme.heading3,
                    ),
                  const Spacer(),
                  if (scrollController.positions.isNotEmpty &&
                      scrollController.offset > 200)
                    IconButton(
                      onPressed: () => showDialog<Null>(
                        context: context,
                        builder: (context) => const AppInfoDialog(),
                      ),
                      icon: const Icon(
                        Symbols.info,
                        color: Colors.black12,
                      ),
                    ),
                ],
              ),
            ],
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.all(MarketplaceTheme.spacing4),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(
                        helperText,
                        style: constraints.isMobile
                            ? MarketplaceTheme.subheading2
                            : MarketplaceTheme.subheading1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog<Null>(
                          context: context,
                          builder: (context) => const AppInfoDialog(),
                        );
                      },
                      icon: const Icon(
                        Symbols.info,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: constraints.isMobile
                      ? MarketplaceTheme.spacing2
                      : MarketplaceTheme.spacing1,
                ),
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 0),
                  style: textStyle,
                  child: Text(
                    headerText,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
