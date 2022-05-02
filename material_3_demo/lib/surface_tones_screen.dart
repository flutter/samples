import 'package:flutter/material.dart';

class SurfaceTonesScreen extends StatelessWidget {
  const SurfaceTonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).colorScheme.shadow;
    Color surfaceTint = Theme.of(context).colorScheme.primary;
    return Expanded(
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 20, 16.0, 0),
            child: Text(
              'Surface Tint only',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(
            surfaceTintColor: surfaceTint,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
            child: Text(
              'Surface Tint and Shadow',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTint,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
            child: Text(
              'Shadow only',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(
            shadowColor: shadowColor,
          )
        ],
      ),
    );
  }
}

class ElevationGrid extends StatelessWidget {
  final Color? shadowColor;
  final Color? surfaceTintColor;
  const ElevationGrid({Key? key, this.shadowColor, this.surfaceTintColor})
      : super(key: key);

  List<ElevationCard> elevationCards(shadowColor, surfaceTintColor) {
    return elevations
        .map(
          (ElevationInfo elevationInfo) => ElevationCard(
            info: elevationInfo,
            shadowColor: shadowColor,
            surfaceTint: surfaceTintColor,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 450) {
          return GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: elevationCards(shadowColor, surfaceTintColor),
          );
        } else {
          return GridView.count(
            shrinkWrap: true,
            crossAxisCount: 6,
            children: elevationCards(shadowColor, surfaceTintColor),
          );
        }
      }),
    );
  }
}

class ElevationCard extends StatefulWidget {
  final ElevationInfo info;
  final Color? shadowColor;
  final Color? surfaceTint;
  const ElevationCard(
      {Key? key, required this.info, this.shadowColor, this.surfaceTint})
      : super(key: key);

  @override
  State<ElevationCard> createState() => _ElevationCardState();
}

class _ElevationCardState extends State<ElevationCard> {
  late double _elevation;

  @override
  void initState() {
    super.initState();
    _elevation = widget.info.elevation;
  }

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(4.0));
    final bool showOpacity = _elevation == widget.info.elevation;
    final Color color = Theme.of(context).colorScheme.surface;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: borderRadius,
        elevation: _elevation,
        color: color,
        shadowColor: widget.shadowColor,
        surfaceTintColor: widget.surfaceTint,
        type: MaterialType.card,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Level ${widget.info.level}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                '${widget.info.level.toInt()} dp',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              if (showOpacity)
                // if (true)
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '${widget.info.overlayPercent}%',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElevationInfo {
  const ElevationInfo(this.level, this.elevation, this.overlayPercent);
  final int level;
  final double elevation;
  final int overlayPercent;
}

const List<ElevationInfo> elevations = <ElevationInfo>[
  ElevationInfo(0, 0.0, 0),
  ElevationInfo(1, 1.0, 5),
  ElevationInfo(2, 3.0, 8),
  ElevationInfo(3, 6.0, 11),
  ElevationInfo(4, 8.0, 12),
  ElevationInfo(5, 12.0, 14),
];
