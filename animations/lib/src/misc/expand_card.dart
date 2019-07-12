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
  bool selected = false;

  double get size => selected ? 200 : 100;

  void toggleExpanded() {
    setState(() {
      selected = !selected;
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
            child: AnimatedSwitcher(
              duration: duration,
              layoutBuilder:
                  (Widget currentChild, List<Widget> previousChildren) {
                List<Widget> children = previousChildren;
                if (currentChild != null)
                  children = children.toList()..add(currentChild);
                return Stack(
                  children: [
                    // Use Positioned.fill so that the child image receives the
                    // constraints of the AnimatedContainer
                    ...children.map((c) => Positioned.fill(child: c)),
                  ],
                );
              },
              child: selected
                  ? Image.asset(
                      'assets/cat.jpg',
                      key: ValueKey('cat'),
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/wolf.jpg',
                      key: ValueKey('wolf'),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
