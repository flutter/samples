import 'package:flutter/material.dart';

class ExpandCardDemo extends StatelessWidget {
  static String routeName = '/expand_card';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SimpleExpandableCard(),
      ),
    );
  }
}

class SimpleExpandableCard extends StatefulWidget {
  _SimpleExpandableCardState createState() => _SimpleExpandableCardState();
}

class _SimpleExpandableCardState extends State<SimpleExpandableCard>
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
          firstChild: _ImageContainer(
              size: size, image: 'assets/wolf.jpg', duration: duration),
          secondChild: _ImageContainer(
              size: size, image: 'assets/cat.jpg', duration: duration),
        ),
      ),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  final double size;
  final String image;
  final Duration duration;

  _ImageContainer({this.size, this.image, this.duration});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: duration,
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}