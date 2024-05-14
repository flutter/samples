import 'package:ai_recipe_generation/app_bar.dart';
import 'package:ai_recipe_generation/features/prompt/prompt_screen.dart';
import 'package:ai_recipe_generation/features/prompt/prompt_view_model.dart';
import 'package:ai_recipe_generation/features/recipes/saved_recipes_screen.dart';
import 'package:ai_recipe_generation/widgets/bottom_bar_shape_border.dart';
import 'package:ai_recipe_generation/widgets/marketplace_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import 'theme.dart';
import 'widgets/icon_loading_indicator.dart';

const double avatarSize = 50;
const double collapsedHeight = 100;
const double expandedHeight = 300;
const double bottomTabBarHeight = 50;

class AdaptiveRouter extends StatefulWidget {
  const AdaptiveRouter({super.key});

  @override
  State<AdaptiveRouter> createState() => _AdaptiveRouterState();
}

class _AdaptiveRouterState extends State<AdaptiveRouter>
    with TickerProviderStateMixin {
  late TextStyle _textStyle;
  late ScrollController scrollController;
  late TabController tabController;
  bool innerScrollAllowed = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    _textStyle = MarketplaceTheme.heading1.copyWith(
      color: Colors.black87.withOpacity(
        1.0,
      ),
    );

    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  double prevOffset = 0;
  void _scrollListener() {
    setState(() {
      innerScrollAllowed = scrollController.offset >= 230;
      if (scrollController.offset >= 230) {
        scrollController.animateTo(230,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate);
      }

      // Don't change the text opacity if scrolling down from original position (overscroll)
      if (scrollController.offset < 0) return;

      // By offset 200, ensure the text is transparent
      if (scrollController.offset > 200) {
        _textStyle = _textStyle.copyWith(
          color: Colors.black87.withOpacity(0),
        );
        return;
      }

      var value = double.parse(
        (1 - (scrollController.offset - 50) / 100).toStringAsFixed(2),
      );

      if (scrollController.offset > 200 && value > 0) value = 0;
      if (value > 1) value = 1;
      if (value < 0) value = 0;
      _textStyle = _textStyle.copyWith(
        color: Colors.black87.withOpacity(
          value,
        ),
      );
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    tabController.dispose();
    super.dispose();
  }

  List<NavigationRailDestination> destinations = [
    const NavigationRailDestination(
      icon: Icon(Symbols.home),
      label: Text('Create a recipe'),
    ),
    const NavigationRailDestination(
      icon: Icon(Symbols.bookmarks),
      label: Text('Saved Recipes'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PromptViewModel>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  AnimatedAppBar(
                    scrollController: scrollController,
                    textStyle: _textStyle,
                    tabController: tabController,
                  ),
                  SliverToBoxAdapter(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: constraints.minHeight,
                      ),
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          PromptScreen(
                            canScroll: innerScrollAllowed,
                          ),
                          SavedRecipesScreen(
                            canScroll: innerScrollAllowed,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: bottomTabBarHeight,
                  decoration: ShapeDecoration(
                    shadows: const [
                      BoxShadow(
                        offset: Offset(1, -1),
                        color: Colors.black45,
                        blurRadius: 5,
                      )
                    ],
                    shape: const BottomBarShapeBorder(50),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black26,
                    controller: tabController,
                    onTap: (idx) {
                      setState(() {});
                    },
                    dividerColor: Colors.transparent,
                    tabs: [
                      for (var destination in destinations) destination.icon,
                    ],
                  ),
                ),
              ),
              if (viewModel.loadingNewRecipe)
                Positioned(
                  top: (MediaQuery.of(context).size.height / 2) - 80,
                  left: (MediaQuery.of(context).size.width / 2) - 80,
                  height: 160,
                  width: 160,
                  child: IconLoadingAnimator(
                    icons: const [
                      Symbols.icecream,
                      Symbols.local_pizza,
                      Symbols.restaurant_menu,
                      Symbols.egg,
                      Symbols.bakery_dining,
                      Symbols.skillet,
                      Symbols.nutrition,
                      Symbols.grocery,
                      Symbols.set_meal,
                      Icons.egg_alt,
                      Symbols.oven,
                      Icons.dinner_dining,
                      Icons.outdoor_grill,
                      Icons.cookie,
                      Icons.blender,
                      Symbols.stockpot,
                    ],
                  ),
                ),
              if (viewModel.geminiFailureResponse != null)
                Positioned(
                  top: (MediaQuery.of(context).size.height / 4),
                  left: (MediaQuery.of(context).size.width / 2) - 160,
                  height: MediaQuery.of(context).size.height / 4,
                  width: 320,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MarketplaceTheme.defaultBorderRadius),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(-1, 1),
                          color: Colors.black45,
                          blurRadius: 5,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        color: MarketplaceTheme.focusedBorderColor,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(MarketplaceTheme.spacing6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(viewModel.geminiFailureResponse!),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: MarketplaceButton(
                              onPressed: () {
                                viewModel.geminiFailureResponse = null;
                              },
                              buttonText: "Dismiss",
                              icon: Symbols.close,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
