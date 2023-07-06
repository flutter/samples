import 'package:flutter_rocket_example/models/user_submodel/geo_submodel.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

const String addressStreetField = "street";
const String addressSuiteField = "suite";
const String addressCityField = "city";
const String addressZipcodeField = "zipcode";
const String addressGeoField = "geo";

class Address extends RocketModel<Address> {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  }) {
    geo ??= Geo();
  }

  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    street = json[addressStreetField];
    suite = json[addressSuiteField];
    city = json[addressCityField];
    zipcode = json[addressZipcodeField];
    geo!.fromJson(json[addressGeoField]);
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
    String? streetField,
    String? suiteField,
    String? cityField,
    String? zipcodeField,
    Geo? geoField,
  }) {
    street = streetField ?? street;
    suite = suiteField ?? suite;
    city = cityField ?? city;
    zipcode = zipcodeField ?? zipcode;
    geo = geoField ?? geo;
    rebuildWidget(fromUpdate: true);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data[addressStreetField] = street;
    data[addressSuiteField] = suite;
    data[addressCityField] = city;
    data[addressZipcodeField] = zipcode;
    data[addressGeoField] = geo!.toJson();

    return data;
  }
}
