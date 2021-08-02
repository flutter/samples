// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:linting_tool/model/rule.dart';

part 'profile.g.dart';

@HiveType(typeId: 1)
class RulesProfile extends Equatable {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final List<Rule> rules;

  const RulesProfile({
    required this.name,
    required this.rules,
  });

  @override
  List<Object?> get props => [name];
}
