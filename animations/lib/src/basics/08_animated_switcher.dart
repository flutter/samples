import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
static const String routeName= '/basics/animated_switcher';
  _AnimatedSwitcherDemoState createState() => new _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  bool toggleValue = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedSwitcher Demonstration')),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: toggleValue
                ? Colors.greenAccent[100]
                : Colors.redAccent[100].withOpacity(0.5)),
        child: Stack(children: <Widget>[
          AnimatedPositioned(
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeIn,
            top: 3.0,
            left: toggleValue ? 60.0 : 0.0,
            right: toggleValue ? 0.0 : 60.0,
            child: InkWell(
              onTap: toggleButton,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 1000),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(child: child, scale: animation);
                },
                child: toggleValue
                    ? Icon(Icons.check_circle,
                        color: Colors.green, size: 35.0, key: UniqueKey())
                    : Icon(Icons.remove_circle,
                        color: Colors.red, size: 35.0, key: UniqueKey()),
              ),
            ),
          )
        ]),
      )),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
