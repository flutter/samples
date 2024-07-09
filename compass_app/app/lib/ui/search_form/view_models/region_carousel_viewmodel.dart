import 'package:flutter/cupertino.dart';

import '../../../data/models/region.dart';

class RegionCarouselViewModel extends ChangeNotifier {

  final List<Region> _regions = [];

  List<Region> get regions => _regions;
}