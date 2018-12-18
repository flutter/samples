import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/pages/subpages/accounts.dart';
import 'package:rally_proto/pages/subpages/bills.dart';
import 'package:rally_proto/pages/subpages/budgets.dart';
import 'package:rally_proto/pages/subpages/overview.dart';
import 'package:rally_proto/pages/subpages/settings.dart';
import 'package:rally_proto/util/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  _HomePageState() {
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    print('_HomePageState initState');

    _tabController.addListener(() {
      if (_tabController.indexIsChanging && _tabController.previousIndex != _tabController.index) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
              children: <Widget>[
                Theme(
                  // This theme effectively removes the default visual touch
                  // feedback for tapping a tab, which is replaced with a custom
                  // animation.
                  data: Theme.of(context).copyWith(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: TabBar(
                    // setting isScrollable to true prevents the tabs from being
                    // wrapped in [Expanded] widgets, which allows for more
                    // flexible sizes and size animations among tabs.
                    isScrollable: true,
                    labelPadding: EdgeInsets.zero,
                    tabs: _buildTabs(),
                    controller: _tabController,
                    // This effectively removes the tab indicator.
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(style: BorderStyle.none)
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      children: _buildTabViews(),
                      controller: _tabController
                  ),
                )
              ]),
        )
    );
  }

  // TODO(clocksmith): Use icons.
  List<Widget> _buildTabs() {
    return <Widget>[
      _buildTab(Icons.pie_chart, "OVERVIEW", 0),
      _buildTab(Icons.attach_money, "ACCOUNTS", 1),
      _buildTab(Icons.money_off, "BILLS", 2),
      _buildTab(Icons.table_chart, "BUDGETS", 3), // TODO(clocksmith): This should be Icons.bar_chart, but its currently unavalableflutter
      _buildTab(Icons.settings, "SETTINGS", 4),
    ];
  }

  List<Widget> _buildTabViews() {
    return <Widget>[
      OverviewPage(),
      AccountsPage(),
      BillsPage(),
      BudgetsPage(),
      SettingsPage(),
    ];
  }

  Widget _buildTab(IconData iconData, String title, int index) {
    return _RallyTab(Icon(iconData), title, _tabController.index == index);
  }
}

class _RallyTab extends StatefulWidget {
  Text titleText;
  Icon icon;
  bool isExpanded;

  _RallyTab(
      Icon icon,
      String title,
      bool isExpanded) {
    titleText = Text(title);
    this.icon = icon;
    this.isExpanded = isExpanded;
  }

  _RallyTabState createState() => _RallyTabState();
}

class _RallyTabState extends State<_RallyTab> with SingleTickerProviderStateMixin {
  Animation<double> _titleSizeAnimation;
  Animation<double> _titleFadeAnimation;
  // TODO(clocksmith): Use this to animate the opacity of the icons
  Animation<double> _iconFadeAnimation;
  AnimationController _controller;

  @override
  initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: Constants.defaultAnimationMillis),
        vsync: this
    );
    _titleSizeAnimation = CurvedAnimation(
        parent: Tween(begin: 0.0, end: 1.0).animate(_controller),
        curve: Curves.linear
    );
    _titleFadeAnimation = CurvedAnimation(
        parent: Tween(begin: 0.0, end: 1.0).animate(_controller),
        curve: Curves.easeOut
    );
    _iconFadeAnimation = CurvedAnimation(
        parent: Tween(begin: 0.6, end: 1.0).animate(_controller),
        curve: Curves.linear
    );
    if (widget.isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(_RallyTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // TODO(clocksmith): Calculate the widths of the inner boxes to take the exact required space.
    return SizedBox(
      height: 56.0,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: width / 7,
            child: widget.icon,
          ),
          FadeTransition(
            child: SizeTransition(
              child: SizedBox(
                width: width / 4,
                child: Center(child: widget.titleText),
              ),
              axis: Axis.horizontal,
              axisAlignment: -1.0,
              sizeFactor: _titleSizeAnimation,
            ),
            opacity: _titleFadeAnimation,

          ),

        ],
      ),
    );
  }

  dispose() {
    _controller.dispose();
    super.dispose();
  }
}

