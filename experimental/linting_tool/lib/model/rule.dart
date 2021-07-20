// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rule.g.dart';

@JsonSerializable()
class Rule extends Equatable {
  final String name;
  final String description;
  final String group;
  final String maturity;
  final List<String> incompatible;
  final List<String> sets;
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
