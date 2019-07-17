import 'package:flutter/material.dart';

class ExpandCardDemo extends StatelessWidget {
  static const String routeName = '/expand_card';

  @override
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
  bool selected = false;

  double get size => selected ? 256 : 128;

  void toggleExpanded() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () => toggleExpanded(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            duration: duration,
            width: size,
            height: size,
            curve: Curves.ease,
            child: AnimatedCrossFade(
              duration: duration,
              firstCurve: Curves.easeInOutCubic,
              secondCurve: Curves.easeInOutCubic,
              crossFadeState: selected
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              // Use Positioned.fill() to pass the constraints to its children.
              // This allows the Images to use BoxFit.cover to cover the correct
              // size
              layoutBuilder:
                  (topChild, topChildKey, bottomChild, bottomChildKey) {
                return Stack(
                  children: <Widget>[
                    Positioned.fill(
                      key: bottomChildKey,
                      child: bottomChild,
                    ),
                    Positioned.fill(
                      key: topChildKey,
                      child: topChild,
                    ),
                  ],
                );
              },
              firstChild: Image.asset(
                'assets/eat_cape_town_sm.jpg',
                fit: BoxFit.cover,
              ),
              secondChild: Image.asset(
                'assets/eat_new_orleans_sm.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
