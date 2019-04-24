import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A simple widget that builds different things on different platforms.
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
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
        return androidBuilder(context, child);
      case TargetPlatform.iOS:
        return iosBuilder(context, child);
      default:
        assert(false, 'Unexpected platform ${Theme.of(context).platform}');
        return null;
    }
  }
}

/// A platform-agnostic card with a high elevation that reacts when tapped.
///
/// This is an example of a custom widget that an app developer might create for
/// use on both iOS and Android as part of their brand's unique design.
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
    elevationAnimation = controller.drive(CurveTween(curve: Curves.easeInOutCubic));
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
      onPointerDown: (_) { if (widget.onPressed != null) { controller.forward(); } },
      onPointerUp: (_) { controller.reverse(); },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (widget.onPressed != null) {
            widget.onPressed();
          }
        },
        // This widget both internally drives an animation when pressed and
        // responds to an external animation to flatten the card when in a
        // hero animation. You likely want to modularize them more in your own
        // app.
        child: AnimatedBuilder(
          animation: Listenable.merge([elevationAnimation, widget.flattenAnimation]),
          child: widget.child,
          builder: (BuildContext context, Widget child) {
            return Transform.scale(
              // This is just a sample. You likely want to keep the math cleaner
              // in your own app.
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

/// A platform-agnostic card representing a song which can be in a card state,
/// a flat state or anything in between.
///
/// When it's in a card state, it's pressable.
///
/// This is also a custom branded control you're likely to have designed for
/// your own app.
class HeroAnimatingSongCard extends StatelessWidget {
  HeroAnimatingSongCard({ this.song, this.color, this.heroAnimation, this.onPressed });

  final String song;
  final Color color;
  final Animation<double> heroAnimation;
  final VoidCallback onPressed;

  double get playButtonSize => 50 + 50 * heroAnimation.value;

  @override
  Widget build(BuildContext context) {
    // This is an inefficient usage of AnimatedBuilder since it's rebuilding
    // the entire subtree instead of passing in a non-changing child and
    // building a transition widget in between.
    //
    // Left simple in this demo because this card doesn't have any real inner
    // content so we're just rebuilding everything while animating.
    return AnimatedBuilder(
      animation: heroAnimation,
      builder: (BuildContext context, Widget child) {
        return PressableCard(
          onPressed: heroAnimation.value == 0 ? onPressed : null,
          color: color,
          flattenAnimation: heroAnimation,
          child: SizedBox(
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // The song title banner slides off in the hero animation.
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
                // The play button grows in the hero animation.
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

// ===========================================================================
// Non-shared code below because we're showing different interfaces to prompt
// for a multiple-choice answer.
//
// This is a design choice and you may want to do something different in your
// app.
// ===========================================================================
/// This uses a platform-appropriate mechanism to show users multiple choices.
///
/// On Android, it uses a dialog with radio buttons. On iOS, it uses a picker.
void showChoices(BuildContext context, List<String> choices) {
  switch (Theme.of(context).platform) {
    case TargetPlatform.android:
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
            actions: [
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
          );
        }
      );
      return;
    default:
      assert(false, 'Unexpected platform ${Theme.of(context).platform}');
  }
}
