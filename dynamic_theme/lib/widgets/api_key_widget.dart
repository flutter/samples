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
import 'package:url_launcher/link.dart';

import 'text_field_decoration.dart';

class ApiKeyWidget extends StatelessWidget {
  ApiKeyWidget({
    super.key,
    required this.onSubmitted,
    required this.title,
  });

  final String title;
  final ValueChanged onSubmitted;
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'To use the Gemini API, you\'ll need an API key. '
                'If you don\'t already have one, '
                'create a key in Google AI Studio.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Link(
                uri: Uri.https('aistudio.google.com', '/app/apikey'),
                target: LinkTarget.blank,
                builder: (context, followLink) => TextButton(
                  onPressed: followLink,
                  child: const Text('Get an API Key'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: textFieldDecoration(context, 'Enter your API key'),
                controller: _textController,
                obscureText: true,
                onSubmitted: (value) {
                  onSubmitted(value);
                },
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                onSubmitted(_textController.value.text);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
