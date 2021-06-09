import 'package:flutter/material.dart';

class FadeTransitionPage<T> extends Page<T> {
  final Widget child;

  const FadeTransitionPage({LocalKey? key, required this.child})
      : super(key: key);

  @override
  Route<T> createRoute(BuildContext context) {
    return PageBasedFadeTransitionRoute<T>(this);
  }
}

class PageBasedFadeTransitionRoute<T> extends PageRoute<T> {
  PageBasedFadeTransitionRoute(Page page)
      : super(
          settings: page,
        );

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    var curveTween = CurveTween(curve: Curves.easeIn);
    return FadeTransition(
      opacity: animation.drive(curveTween),
      child: (settings as FadeTransitionPage).child,
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}
