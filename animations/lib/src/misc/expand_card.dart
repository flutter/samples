import 'package:flutter/material.dart';

class ExpandCardDemo extends StatelessWidget {
  static String routeName = '/expand_card';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ExpandCard(),
      ),
    );
  }
}

class ExpandCard extends StatefulWidget {
  _ExpandCardState createState() => _ExpandCardState();
}

class _ExpandCardState extends State<ExpandCard>
    with SingleTickerProviderStateMixin {
  static const Duration duration = Duration(milliseconds: 300);
  bool expanded = false;

  double get size => expanded ? 200 : 100;

  void initState() {
    super.initState();
  }

  void toggleExpanded() {
    setState(() {
      expanded = !expanded;
    });
  }

  Widget build(context) {
    return GestureDetector(
      onTap: () => toggleExpanded(),
      child: Card(
        child: AnimatedCrossFade(
          alignment: Alignment.center,
          duration: duration,
          crossFadeState:
              expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: AnimatedContainer(
            duration: duration,
            width: size,
            height: size,
            child: Image.asset(
              'assets/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),
          secondChild: AnimatedContainer(
            duration: duration,
            width: size,
            height: size,
            child: Image.asset(
              'assets/wolf.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
