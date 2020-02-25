// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:gallery/constants.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/pages/home.dart';
import 'package:gallery/pages/settings.dart';

class AnimatedBackdrop extends StatefulWidget {
  @override
  _AnimatedBackdropState createState() => _AnimatedBackdropState();
}

class _AnimatedBackdropState extends State<AnimatedBackdrop>
    with SingleTickerProviderStateMixin {
  AnimationController backdropController;
  ValueNotifier<bool> isSettingsOpenNotifier;
  Animation<double> openSettingsAnimation;
  Animation<double> staggerSettingsItemsAnimation;

  @override
  void initState() {
    super.initState();
    backdropController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    )..addListener(() {
        setState(() {
          // The state that has changed here is the animation.
        });
      });
    isSettingsOpenNotifier = ValueNotifier(false);
    openSettingsAnimation = CurvedAnimation(
      parent: backdropController,
      curve: Interval(
        0.0,
        0.4,
        curve: Curves.ease,
      ),
    );
    staggerSettingsItemsAnimation = CurvedAnimation(
      parent: backdropController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  void dispose() {
    backdropController.dispose();
    isSettingsOpenNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Backdrop(
      controller: backdropController,
      isSettingsOpenNotifier: isSettingsOpenNotifier,
      openSettingsAnimation: openSettingsAnimation,
      frontLayer: SettingsPage(
        openSettingsAnimation: openSettingsAnimation,
        staggerSettingsItemsAnimation: staggerSettingsItemsAnimation,
        isSettingsOpenNotifier: isSettingsOpenNotifier,
      ),
      backLayer: HomePage(),
    );
  }
}

class Backdrop extends StatefulWidget {
  final Widget frontLayer;
  final Widget backLayer;
  final AnimationController controller;
  final Animation<double> openSettingsAnimation;
  final ValueNotifier<bool> isSettingsOpenNotifier;

  Backdrop({
    Key key,
    @required this.frontLayer,
    @required this.backLayer,
    @required this.controller,
    @required this.openSettingsAnimation,
    @required this.isSettingsOpenNotifier,
  })  : assert(frontLayer != null),
        assert(backLayer != null),
        assert(controller != null),
        assert(isSettingsOpenNotifier != null),
        assert(openSettingsAnimation != null),
        super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin, FlareController {
  FlareAnimationLayer _animationLayer;
  FlutterActorArtboard _artboard;

  double settingsButtonWidth = 64;
  double settingsButtonHeightDesktop = 56;
  double settingsButtonHeightMobile = 40;

  FocusNode frontLayerFocusNode;
  FocusNode backLayerFocusNode;

  @override
  void initState() {
    super.initState();
    frontLayerFocusNode = FocusNode();
    backLayerFocusNode = FocusNode();
  }

  @override
  void dispose() {
    frontLayerFocusNode.dispose();
    backLayerFocusNode.dispose();
    super.dispose();
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    _artboard = artboard;
    initAnimationLayer();
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // This is a necessary override for the [FlareController] mixin.
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (_animationLayer != null) {
      FlareAnimationLayer layer = _animationLayer;
      layer.time = widget.controller.value * layer.duration;
      layer.animation.apply(layer.time, _artboard, 1);
      if (layer.isDone || layer.time == 0) {
        _animationLayer = null;
      }
    }
    return _animationLayer != null;
  }

  void initAnimationLayer() {
    if (_artboard != null) {
      final animationName = "Animations";
      ActorAnimation animation = _artboard.getAnimation(animationName);
      _animationLayer = FlareAnimationLayer()
        ..name = animationName
        ..animation = animation;
    }
  }

  void toggleSettings() {
    // Animate the settings panel to open or close.
    widget.controller
        .fling(velocity: widget.isSettingsOpenNotifier.value ? -1 : 1);
    setState(() {
      widget.isSettingsOpenNotifier.value =
          !widget.isSettingsOpenNotifier.value;
    });
    // Animate the settings icon.
    initAnimationLayer();
    isActive.value = true;
  }

  Animation<RelativeRect> _getPanelAnimation(BoxConstraints constraints) {
    final double height = constraints.biggest.height;
    final double top = height - galleryHeaderHeight;
    final double bottom = -galleryHeaderHeight;
    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(0, top, 0, bottom),
    ).animate(CurvedAnimation(
      parent: widget.openSettingsAnimation,
      curve: Curves.linear,
    ));
  }

  Widget _galleryHeader() {
    return ExcludeSemantics(
      excluding: widget.isSettingsOpenNotifier.value,
      child: Semantics(
        sortKey: OrdinalSortKey(
          GalleryOptions.of(context).textDirection() == TextDirection.ltr
              ? 1.0
              : 2.0,
          name: 'header',
        ),
        label: GalleryLocalizations.of(context).homeHeaderGallery,
        child: Container(),
      ),
    );
  }

  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    final isDesktop = isDisplayDesktop(context);
    final safeAreaTopPadding = MediaQuery.of(context).padding.top;

    final Widget frontLayer = ExcludeSemantics(
      child: FocusTraversalGroup(
        policy: WidgetOrderTraversalPolicy(),
        child: Focus(
          skipTraversal: !widget.isSettingsOpenNotifier.value,
          child: widget.frontLayer,
        ),
      ),
      excluding: !widget.isSettingsOpenNotifier.value,
    );
    final Widget backLayer = ExcludeSemantics(
      child: widget.backLayer,
      excluding: widget.isSettingsOpenNotifier.value,
    );

    return FocusTraversalGroup(
      child: InheritedBackdropFocusNodes(
        frontLayerFocusNode: frontLayerFocusNode,
        backLayerFocusNode: backLayerFocusNode,
        child: Container(
          child: Stack(
            children: [
              if (!isDesktop) ...[
                _galleryHeader(),
                frontLayer,
                PositionedTransition(
                  rect: _getPanelAnimation(constraints),
                  child: backLayer,
                ),
              ],
              if (isDesktop) ...[
                _galleryHeader(),
                backLayer,
                if (widget.isSettingsOpenNotifier.value) ...[
                  ExcludeSemantics(
                    child: ModalBarrier(
                      dismissible: true,
                    ),
                  ),
                  Semantics(
                    label: GalleryLocalizations.of(context)
                        .settingsButtonCloseLabel,
                    child: GestureDetector(
                      onTap: toggleSettings,
                    ),
                  )
                ],
                ScaleTransition(
                  alignment: Directionality.of(context) == TextDirection.ltr
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  scale: CurvedAnimation(
                    parent: isDesktop
                        ? widget.controller
                        : widget.openSettingsAnimation,
                    curve: Curves.easeIn,
                    reverseCurve: Curves.easeOut,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Material(
                      elevation: 7,
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(40),
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 560,
                          maxWidth: desktopSettingsWidth,
                          minWidth: desktopSettingsWidth,
                        ),
                        child: frontLayer,
                      ),
                    ),
                  ),
                ),
              ],
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Semantics(
                  button: true,
                  label: widget.isSettingsOpenNotifier.value
                      ? GalleryLocalizations.of(context)
                          .settingsButtonCloseLabel
                      : GalleryLocalizations.of(context).settingsButtonLabel,
                  child: SizedBox(
                    width: settingsButtonWidth,
                    height: isDesktop
                        ? settingsButtonHeightDesktop
                        : settingsButtonHeightMobile + safeAreaTopPadding,
                    child: Material(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(10),
                      ),
                      color: widget.isSettingsOpenNotifier.value &
                              !widget.controller.isAnimating
                          ? Colors.transparent
                          : Theme.of(context).colorScheme.secondaryVariant,
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: toggleSettings,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 3, end: 18),
                          child: Focus(
                            onFocusChange: (hasFocus) {
                              if (!hasFocus) {
                                FocusScope.of(context).requestFocus(
                                    (widget.isSettingsOpenNotifier.value)
                                        ? frontLayerFocusNode
                                        : backLayerFocusNode);
                              }
                            },
                            child: FlareActor(
                              Theme.of(context).colorScheme.brightness ==
                                      Brightness.light
                                  ? 'assets/icons/settings/settings_light.flr'
                                  : 'assets/icons/settings/settings_dark.flr',
                              alignment: Directionality.of(context) ==
                                      TextDirection.ltr
                                  ? Alignment.bottomLeft
                                  : Alignment.bottomRight,
                              fit: BoxFit.contain,
                              controller: this,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: _buildStack,
    );
  }
}

class InheritedBackdropFocusNodes extends InheritedWidget {
  InheritedBackdropFocusNodes({
    @required Widget child,
    @required this.frontLayerFocusNode,
    @required this.backLayerFocusNode,
  })  : assert(child != null),
        super(child: child);

  final FocusNode frontLayerFocusNode;
  final FocusNode backLayerFocusNode;

  static InheritedBackdropFocusNodes of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
