// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_selector/file_selector.dart' as file_selector;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json2yaml/json2yaml.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/hive_service.dart';
import 'package:linting_tool/repository/repository.dart';
import 'package:yaml/yaml.dart';

const _boxName = 'rules_profile';

class ProfilesStore extends ChangeNotifier {
  final Repository repository;

  ProfilesStore(http.Client httpClient) : repository = Repository(httpClient) {
    fetchSavedProfiles();
  }

  bool _isLoading = true;

  bool get isLoading => _isLoading;

  List<RulesProfile> _savedProfiles = [];

  List<RulesProfile> get savedProfiles => _savedProfiles;

  String? _error;

  String? get error => _error;

  Future<void> fetchSavedProfiles() async {
    if (!_isLoading) _isLoading = true;
    notifyListeners();
    try {
      _savedProfiles = await HiveService.getBoxes<RulesProfile>(_boxName);
    } on Exception catch (e) {
      log(e.toString());
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> addToNewProfile(RulesProfile profile) async {
    await HiveService.addBox<RulesProfile>(profile, _boxName);

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<void> addToExistingProfile(RulesProfile profile, Rule rule) async {
    // ignore: todo
    // TODO(abd99): Consider refactoring to LinkedHashSet/SplayTreeSet to avoid
    // duplication automatically.
    // ref: https://github.com/flutter/samples/pull/870#discussion_r685666792
    final rules = profile.rules;

    // If rule is already in profile, skip updating profile
    if (rules.contains(rule)) {
      return;
    }

    rules.add(rule);

    final newProfile = RulesProfile(name: profile.name, rules: rules);

    await HiveService.updateBox<RulesProfile>(profile, newProfile, _boxName);

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<void> updateProfile(
      RulesProfile oldProfile, RulesProfile newProfile) async {
    await HiveService.updateBox<RulesProfile>(oldProfile, newProfile, _boxName);

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<void> removeRuleFromProfile(RulesProfile profile, Rule rule) async {
    final newProfile =
        RulesProfile(name: profile.name, rules: profile.rules..remove(rule));
    await updateProfile(profile, newProfile);
  }

  Future<void> deleteProfile(RulesProfile profile) async {
    await HiveService.deleteBox<RulesProfile>(profile, _boxName);

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<bool> exportProfileFile(
    RulesProfile profile, {
    RulesStyle rulesStyle = RulesStyle.booleanMap,
  }) async {
    _isLoading = true;
    notifyListeners();

    var resultSaved = false;

    try {
      final templateFileData = await repository.getTemplateFile();

      /// Fetch formatted data to create new YamlFile.
      final newYamlFile =
          _prepareYamlFile(profile, templateFileData, rulesStyle);

      resultSaved = await _saveFileToDisk(newYamlFile);
    } on SocketException catch (e) {
      log(e.toString());
      _error = 'Check internet connection.';
      resultSaved = false;
    } on Exception catch (e) {
      log(e.toString());
    }

    _isLoading = false;
    notifyListeners();

    return resultSaved;
  }

  Future<bool> _saveFileToDisk(String newYamlFile) async {
    const name = 'analysis_options.yaml';

    /// Get file path using file picker.
    final saveLocation = await file_selector.getSaveLocation(
      suggestedName: name,
    );

    final data = Uint8List.fromList(newYamlFile.codeUnits);
    final file = file_selector.XFile.fromData(data, name: name);

    /// Save file to disk if path was provided.
    if (saveLocation != null) {
      await file.saveTo(saveLocation.path);
      return true;
    }

    const errorMessage = 'File path not found.';
    _error = errorMessage;
    throw Exception(errorMessage);
  }

  String _prepareYamlFile(
      RulesProfile profile, YamlMap templateFile, RulesStyle rulesStyle) {
    final rules = profile.rules.map((e) => e.name);

    final rulesData =
        json.decode(json.encode(templateFile)) as Map<String, dynamic>;

    /// Add rules to existing template according to formatting style.
    if (rulesStyle == RulesStyle.booleanMap) {
      final rulesMap = <String, bool>{for (final rule in rules) rule: true};
      rulesData.update('linter', (dynamic value) => {'rules': rulesMap});
    } else {
      rulesData.update('linter', (dynamic value) => {'rules': rules});
    }

    return json2yaml(rulesData, yamlStyle: YamlStyle.pubspecYaml);
  }
}

/// Formatting style for rules.
enum RulesStyle {
  list,
  booleanMap,
}
