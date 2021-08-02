// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rule.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class Rule extends Equatable {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String group;
  @HiveField(3)
  final String maturity;
  @HiveField(4)
  final List<String> incompatible;
  @HiveField(5)
  final List<String> sets;
  @HiveField(6)
  final String details;

  const Rule({
    required this.name,
    required this.description,
    required this.group,
    required this.maturity,
    required this.incompatible,
    required this.sets,
    required this.details,
  });

  factory Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);

  Map<String, dynamic> toJson() => _$RuleToJson(this);

  @override
  List<Object?> get props => [name];
}
