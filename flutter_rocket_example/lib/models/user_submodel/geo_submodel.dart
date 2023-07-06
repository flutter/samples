import 'package:flutter_rocket/flutter_rocket.dart';

const String geoLatField = "lat";
const String geoLngField = "lng";

class Geo extends RocketModel<Geo> {
  String? lat;
  String? lng;

  Geo({
    this.lat,
    this.lng,
  });
  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    lat = json[geoLatField];
    lng = json[geoLngField];
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
    String? latField,
    String? lngField,
  }) {
    lat = latField ?? lat;
    lng = lngField ?? lng;
    rebuildWidget(fromUpdate: true);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data[geoLatField] = lat;
    data[geoLngField] = lng;

    return data;
  }
}
