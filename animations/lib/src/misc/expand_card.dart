import 'package:flutter/material.dart';

class ExpandCardDemo extends StatelessWidget {
  static const String routeName = '/expand_card';

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

  void toggleExpanded() {
    setState(() {
      expanded = !expanded;
    });
  }

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
            child: AnimatedCrossFade(
              duration: duration,
              crossFadeState: expanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              // Use Positioned.fill() to pass the constraints to its children.
              // This allows the Images to use BoxFit.cover to cover the correct
              // size
              layoutBuilder: (Widget topChild, Key topChildKey,
                  Widget bottomChild, Key bottomChildKey) {
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
                'assets/cat.jpg',
                fit: BoxFit.cover,
              ),
              secondChild: Image.asset(
                'assets/wolf.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
