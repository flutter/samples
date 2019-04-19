import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformWidget extends StatelessWidget {
  const PlatformWidget({
    Key key,
    @required this.androidBuilder,
    @required this.iosBuilder,
    this.child,
  }) : assert(androidBuilder != null),
       assert(iosBuilder != null),
       super(key: key);

  final TransitionBuilder androidBuilder;
  final TransitionBuilder iosBuilder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return androidBuilder(context, child);
      case TargetPlatform.iOS:
        return iosBuilder(context, child);
    }

    assert(false, 'Unexpected platform');
    return null;
  }
}

class PressableCard extends StatefulWidget {
  const PressableCard({
    this.onPressed,
    this.color,
    this.flattenAnimation,
    this.child,
  });

  final VoidCallback onPressed;
  final Color color;
  final Animation<double> flattenAnimation;
  final Widget child;

  @override
  State<StatefulWidget> createState() => new _PressableCardState();
}

class _PressableCardState extends State<PressableCard> with SingleTickerProviderStateMixin {
  bool pressed = false;
  AnimationController controller;
  Animation<double> elevationAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 40),
    );
    elevationAnimation = controller
        .drive(CurveTween(curve: Curves.easeInOutCubic));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  double get flatten => 1 - widget.flattenAnimation.value;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) { if (widget.onPressed != null) controller.forward(); },
      onPointerUp: (_) { controller.reverse(); },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (widget.onPressed != null) {
            widget.onPressed();
          }
        },
        child: AnimatedBuilder(
          animation: Listenable.merge([elevationAnimation, widget.flattenAnimation]),
          child: widget.child,
          builder: (BuildContext context, Widget child) {
            return Transform.scale(
              scale: 1 - elevationAnimation.value * 0.03,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16) * flatten,
                child: PhysicalModel(
                  elevation: ((1 - elevationAnimation.value) * 10 + 10) * flatten,
                  borderRadius: BorderRadius.circular(12 * flatten),
                  clipBehavior: Clip.antiAlias,
                  color: widget.color,
                  child: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HeroAnimatingSongCard extends StatelessWidget {
  HeroAnimatingSongCard({ this.song, this.color, this.heroAnimation, this.onPressed });

  final String song;
  final Color color;
  final Animation<double> heroAnimation;
  final VoidCallback onPressed;

  double get playButtonSize => 50 + 50 * heroAnimation.value;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: heroAnimation,
      builder: (BuildContext context, Widget child) {
        return PressableCard(
          onPressed: onPressed,
          color: color,
          flattenAnimation: heroAnimation,
          child: SizedBox(
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  bottom: - 80 * heroAnimation.value,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    color: Colors.black12,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      song,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 45) * (1 - heroAnimation.value),
                  child: Container(
                    height: playButtonSize,
                    width: playButtonSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    alignment: Alignment.center,
                    child: Icon(Icons.play_arrow, size: playButtonSize, color: Colors.black38),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void showChoices(BuildContext context, List<String> choices) {
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
      showDialog(
        context: context,
        builder: (BuildContext context) {
          int selectedRadio = 1;
          return AlertDialog(
            contentPadding: EdgeInsets.only(top: 12),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(choices.length, (int index) {
                    return RadioListTile(
                      title: Text(choices[index]),
                      value: index,
                      groupValue: selectedRadio,
                      onChanged: (int value) {
                        setState(() => selectedRadio = value);
                      },
                    );
                  }),
                );
              },
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () { Navigator.of(context).pop(); },
              ),
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () { Navigator.of(context).pop(); },
              ),
            ],
          );
        },
      );
      return;
    case TargetPlatform.iOS:
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 250,
            child: DefaultTextStyle(
              style: CupertinoTheme.of(context).textTheme.textStyle,
              child: CupertinoPicker(
                useMagnifier: true,
                magnification: 1.1,
                itemExtent: 40,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: List<Widget>.generate(choices.length, (int index) {
                  return Center(child: Text(
                    choices[index],
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ));
                }),
                onSelectedItemChanged: (int value) {},
              ),
            ),
          );
        }
      );
      return;
  }
}
