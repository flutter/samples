/*
 * Copyright 2019 Google LLC
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
);

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
};

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
  coords: LatLng.fromJson(json['coords'] as Map<String, dynamic>),
  id: json['id'] as String,
  name: json['name'] as String,
  zoom: (json['zoom'] as num).toDouble(),
);

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
  'coords': instance.coords,
  'id': instance.id,
  'name': instance.name,
  'zoom': instance.zoom,
};

Office _$OfficeFromJson(Map<String, dynamic> json) => Office(
  address: json['address'] as String,
  id: json['id'] as String,
  image: json['image'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  name: json['name'] as String,
  phone: json['phone'] as String,
  region: json['region'] as String,
);

Map<String, dynamic> _$OfficeToJson(Office instance) => <String, dynamic>{
  'address': instance.address,
  'id': instance.id,
  'image': instance.image,
  'lat': instance.lat,
  'lng': instance.lng,
  'name': instance.name,
  'phone': instance.phone,
  'region': instance.region,
};

Locations _$LocationsFromJson(Map<String, dynamic> json) => Locations(
  offices:
      (json['offices'] as List<dynamic>)
          .map((e) => Office.fromJson(e as Map<String, dynamic>))
          .toList(),
  regions:
      (json['regions'] as List<dynamic>)
          .map((e) => Region.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
  'offices': instance.offices,
  'regions': instance.regions,
};
