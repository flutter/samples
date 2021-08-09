// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:json2yaml/json2yaml.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/hive_service.dart';
import 'package:linting_tool/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'package:file_selector/file_selector.dart' as file_selector;
import 'package:yaml/yaml.dart';

const _boxName = 'rules_profile';

class ProfilesStore extends ChangeNotifier {
  late final Repository repository;
  ProfilesStore(http.Client httpClient) {
    repository = Repository(httpClient);
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
      var profiles = await HiveService.getBoxes<RulesProfile>(_boxName);
      _savedProfiles = profiles;
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
    RulesProfile newProfile =
        RulesProfile(name: profile.name, rules: profile.rules..add(rule));

    await HiveService.updateBox<RulesProfile>(profile, newProfile, _boxName);

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<void> deleteProfile(RulesProfile profile) async {
    await HiveService.deleteBox<RulesProfile>(profile, _boxName);

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<bool> exportProfileFile(RulesProfile profile) async {
    _isLoading = true;

    notifyListeners();

    var resultSaved = false;

    try {
      var templateMap = await repository.getTemplateFile();

      String newYamlFile = _prepareYamlFile(profile, templateMap);

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
    var savePath = await file_selector.getSavePath(
      suggestedName: name,
    );

    final data = Uint8List.fromList(newYamlFile.codeUnits);
    final file = file_selector.XFile.fromData(data, name: name);
    if (savePath != null) {
      file.saveTo(savePath);
      return true;
    }
    var errorMessage = 'File path not found.';
    _error = errorMessage;
    throw Exception(errorMessage);
  }

  String _prepareYamlFile(RulesProfile profile, YamlMap templateFile) {
    var rules = profile.rules.map((e) => e.name).toList();
    var rulesMap = Map.fromEntries(
      rules.map(
        (e) => MapEntry(e, true),
      ),
    );

    var doc = json.decode(json.encode(templateFile)) as Map<String, dynamic>;
    doc.update('linter', (dynamic value) => {'rules': rulesMap});

    var style = YamlStyle.pubspecYaml;

    return json2yaml(doc, yamlStyle: style);
  }
}
