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

class Backdrop extends StatefulWidget {
  final Widget frontLayer;
  final Widget backLayer;

  Backdrop({
    Key key,
    @required this.frontLayer,
    @required this.backLayer,
  })  : assert(frontLayer != null),
        assert(backLayer != null),
        super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin, FlareController {
  AnimationController _controller;
  Animation<double> _animationReversed;
  FlareAnimationLayer _animationLayer;
  FlutterActorArtboard _artboard;

  double settingsButtonWidth = 64;
  double settingsButtonHeightDesktop = 56;
  double settingsButtonHeightMobile = 40;

  bool _isSettingsOpen;
  FocusNode frontLayerFocusNode;
  FocusNode backLayerFocusNode;

  @override
  void initState() {
    super.initState();
    frontLayerFocusNode = FocusNode();
    backLayerFocusNode = FocusNode();

    _isSettingsOpen = false;
    _controller = AnimationController(
        duration: Duration(milliseconds: 100), value: 1, vsync: this)
      ..addListener(() {
        this.setState(() {});
      });
    _animationReversed =
        Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
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
      layer.time = _animationReversed.value * layer.duration;
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
    _controller.fling(velocity: _isSettingsOpen ? 1 : -1);
    initAnimationLayer();
    isActive.value = true;
    _isSettingsOpen = !_isSettingsOpen;
  }

  Animation<RelativeRect> _getPanelAnimation(BoxConstraints constraints) {
    final double height = constraints.biggest.height;
    final double top = height - galleryHeaderHeight;
    final double bottom = -galleryHeaderHeight;
    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, top, 0, bottom),
      end: RelativeRect.fromLTRB(0, 0, 0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
  }

  Widget _galleryHeader() {
    return ExcludeSemantics(
      excluding: _isSettingsOpen,
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
    final Animation<RelativeRect> animation = _getPanelAnimation(constraints);
    final isDesktop = isDisplayDesktop(context);
    final safeAreaTopPadding = MediaQuery.of(context).padding.top;

    final Widget frontLayer = ExcludeSemantics(
      child: DefaultFocusTraversal(
        policy: WidgetOrderFocusTraversalPolicy(),
        child: Focus(
          skipTraversal: !_isSettingsOpen,
          child: InheritedBackdrop(
            toggleSettings: toggleSettings,
            child: widget.frontLayer,
            settingsButtonWidth: settingsButtonWidth,
            desktopSettingsButtonHeight: settingsButtonHeightDesktop,
            mobileSettingsButtonHeight: settingsButtonHeightMobile,
          ),
        ),
      ),
      excluding: !_isSettingsOpen,
    );
    final Widget backLayer = ExcludeSemantics(
      child: widget.backLayer,
      excluding: _isSettingsOpen,
    );

    return DefaultFocusTraversal(
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
                  rect: animation,
                  child: backLayer,
                ),
              ],
              if (isDesktop) ...[
                _galleryHeader(),
                backLayer,
                if (_isSettingsOpen) ...[
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
                    parent: _animationReversed,
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
                  label: _isSettingsOpen
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
                      color: _isSettingsOpen & !_controller.isAnimating
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
                                    (_isSettingsOpen)
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

class InheritedBackdrop extends InheritedWidget {
  final void Function() toggleSettings;
  final double settingsButtonWidth;
  final double desktopSettingsButtonHeight;
  final double mobileSettingsButtonHeight;

  InheritedBackdrop({
    this.toggleSettings,
    this.settingsButtonWidth,
    this.desktopSettingsButtonHeight,
    this.mobileSettingsButtonHeight,
    Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static InheritedBackdrop of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
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
