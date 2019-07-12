import 'package:flutter/material.dart';

class ExpandCardDemo extends StatelessWidget {
  static String routeName = '/simple_expandable_card';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Expandable Card'),
      ),
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

  void initState() {
    super.initState();
  }

  void _toggleExpanded() {
    setState(() {
      expanded = !expanded;
    });
  }

  double get size => expanded ? 200 : 100;

  Widget build(context) {
    return GestureDetector(
      onTap: () => _toggleExpanded(),
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