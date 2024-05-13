// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

InputDecoration textFieldDecoration(BuildContext context, String hintText) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(15),
    hintText: hintText,
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
  );
}
