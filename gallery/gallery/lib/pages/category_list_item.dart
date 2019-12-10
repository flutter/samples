// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/data/demos.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/pages/demo.dart';

class CategoryListItem extends StatefulWidget {
  const CategoryListItem({
    Key key,
    this.title,
    this.imageString,
    this.demos = const [],
  }) : super(key: key);

  final String title;
  final String imageString;
  final List<GalleryDemo> demos;

  @override
  _CategoryListItemState createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static const _expandDuration = Duration(milliseconds: 200);
  AnimationController _controller;
  Animation<double> _childrenHeightFactor;
  Animation<double> _headerChevronOpacity;
  Animation<double> _headerHeight;
  Animation<EdgeInsetsGeometry> _headerMargin;
  Animation<EdgeInsetsGeometry> _headerImagePadding;
  Animation<EdgeInsetsGeometry> _childrenPadding;
  Animation<BorderRadius> _headerBorderRadius;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _expandDuration, vsync: this);
    _childrenHeightFactor = _controller.drive(_easeInTween);
    _headerChevronOpacity = _controller.drive(_easeInTween);
    _headerHeight = Tween<double>(
      begin: 80,
      end: 96,
    ).animate(_controller);
    _headerMargin = EdgeInsetsGeometryTween(
      begin: EdgeInsets.fromLTRB(32, 8, 32, 8),
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerImagePadding = EdgeInsetsGeometryTween(
      begin: EdgeInsets.all(8),
      end: EdgeInsetsDirectional.fromSTEB(16, 8, 8, 8),
    ).animate(_controller);
    _childrenPadding = EdgeInsetsGeometryTween(
      begin: EdgeInsets.symmetric(horizontal: 32),
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerBorderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(10),
      end: BorderRadius.zero,
    ).animate(_controller);

    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild.
          });
        });
      }
    });
  }

  Widget _buildHeaderWithChildren(BuildContext context, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _CategoryHeader(
          margin: _headerMargin.value,
          imagePadding: _headerImagePadding.value,
          borderRadius: _headerBorderRadius.value,
          height: _headerHeight.value,
          chevronOpacity: _headerChevronOpacity.value,
          imageString: widget.imageString,
          title: widget.title,
          onTap: _handleTap,
        ),
        Padding(
          padding: _childrenPadding.value,
          child: ClipRect(
            child: Align(
              heightFactor: _childrenHeightFactor.value,
              child: child,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildHeaderWithChildren,
      child: closed ? null : _ExpandedCategoryDemos(demos: widget.demos),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({
    Key key,
    this.margin,
    this.imagePadding,
    this.borderRadius,
    this.height,
    this.chevronOpacity,
    this.imageString,
    this.title,
    this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry imagePadding;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final String imageString;
  final String title;
  final double chevronOpacity;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: margin,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        color: colorScheme.onBackground,
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Padding(
                        padding: imagePadding,
                        child: ExcludeSemantics(
                          child: Image.asset(
                            imageString,
                            width: 64,
                            height: 64,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 8),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.headline.apply(
                                color: colorScheme.onSurface,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: chevronOpacity,
                  child: chevronOpacity != 0
                      ? Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 8,
                            end: 32,
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            color: colorScheme.onSurface,
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ExpandedCategoryDemos extends StatelessWidget {
  const _ExpandedCategoryDemos({
    Key key,
    this.demos,
  }) : super(key: key);

  final List<GalleryDemo> demos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final demo in demos)
          CategoryDemoItem(
            demo: demo,
          ),
        const SizedBox(height: 12), // Extra space below.
      ],
    );
  }
}

class CategoryDemoItem extends StatelessWidget {
  const CategoryDemoItem({Key key, this.demo}) : super(key: key);

  final GalleryDemo demo;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: MergeSemantics(
        child: InkWell(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute(builder: (context) => DemoPage(demo: demo)),
            );
          },
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 32,
              top: 20,
              end: isDisplayDesktop(context) ? 16 : 8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  demo.icon,
                  color: colorScheme.primary,
                ),
                SizedBox(width: 40),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        demo.title,
                        style: textTheme.subhead
                            .apply(color: colorScheme.onSurface),
                      ),
                      Text(
                        demo.subtitle,
                        style: textTheme.overline.apply(
                          color: colorScheme.onSurface.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(
                        thickness: 1,
                        height: 1,
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
