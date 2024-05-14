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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import 'widgets/api_key_widget.dart';
import 'widgets/message_widget.dart';
import 'widgets/text_field_decoration.dart';

final themeColor = ValueNotifier<Color>(Colors.orangeAccent);
final themeMode = ValueNotifier<ThemeMode>(ThemeMode.light);
final textScaleFactor = ValueNotifier<double>(1);

void main() {
  runApp(const GenerativeAISample(title: "Dynamic Theme"));
}

class GenerativeAISample extends StatefulWidget {
  const GenerativeAISample({super.key, required this.title});
  final String title;

  @override
  State<GenerativeAISample> createState() => _GenerativeAISampleState();
}

class _GenerativeAISampleState extends State<GenerativeAISample> {
  String? apiKey;

  ThemeData theme(Brightness brightness) {
    final colors = ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: themeColor.value,
    );
    return ThemeData(
      brightness: brightness,
      colorScheme: colors,
      scaffoldBackgroundColor: colors.surface,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([
        themeColor,
        themeMode,
        textScaleFactor,
      ]),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter + GenAI',
          theme: theme(Brightness.light),
          darkTheme: theme(Brightness.dark),
          themeMode: themeMode.value,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  textScaler: TextScaler.linear(textScaleFactor.value)),
              child: child!,
            );
          },
          home: switch (apiKey) {
            final providedKey? => Example(
                title: widget.title,
                apiKey: providedKey,
              ),
            _ => ApiKeyWidget(
                title: widget.title,
                onSubmitted: (key) {
                  setState(() => apiKey = key);
                },
              ),
          },
        );
      },
    );
  }
}

class Example extends StatefulWidget {
  const Example({
    super.key,
    required this.apiKey,
    required this.title,
  });

  final String apiKey, title;

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final loading = ValueNotifier(false);
  final menu = ValueNotifier('');
  final messages = ValueNotifier<List<(Sender, String)>>([]);
  final controller = TextEditingController();
  late final _history = <Content>[];

  late final model = GenerativeModel(
    model: 'gemini-pro',
    apiKey: widget.apiKey,
    requestOptions: const RequestOptions(apiVersion: 'v1beta'),
    tools: [
      Tool(
        functionDeclarations: <FunctionDeclaration>[
          FunctionDeclaration(
            'change_theme_color',
            'Change the current theme color',
            Schema(
              SchemaType.object,
              properties: {
                'hex': Schema(
                  SchemaType.string,
                  description: 'Must be 6 in length. FF00EE,000000,FFFFFF',
                ),
              },
            ),
          ),
          FunctionDeclaration(
            'change_theme_mode',
            'Change the current theme mode',
            Schema(
              SchemaType.object,
              properties: {
                'mode': Schema(
                  SchemaType.string,
                  description:
                      'Must be one of the following: light,dark,system',
                ),
              },
            ),
          ),
          FunctionDeclaration(
            'change_text_scale_factor',
            'Change the current font scale, where 1 represents 14px and 2.0 = 48px',
            Schema(
              SchemaType.object,
              properties: {
                'scale': Schema(
                  SchemaType.number,
                  description: 'Valid font scale, defaults to 1.0',
                ),
              },
            ),
          ),
        ],
      ),
    ],
  );

  Future<void> sendMessage() async {
    final message = controller.text.trim();
    if (message.isEmpty) return;
    controller.clear();
    addMessage(Sender.user, message);
    loading.value = true;
    try {
      final prompt = StringBuffer();
      prompt.writeln(message);
      final response = await callWithActions([Content.text(prompt.toString())]);
      if (response.text != null) {
        addMessage(Sender.system, response.text!);
      } else {
        addMessage(Sender.system, 'Something went wrong, please try again.');
      }
    } catch (e) {
      addMessage(Sender.system, 'Error sending message: $e');
    } finally {
      loading.value = false;
    }
  }

  Future<GenerateContentResponse> callWithActions(
    Iterable<Content> prompt,
  ) async {
    final response = await model.generateContent(
      _history.followedBy(prompt),
    );
    if (response.candidates.isNotEmpty) {
      _history.addAll(prompt);
      _history.add(response.candidates.first.content);
    }
    final actions = <FunctionResponse>[];
    for (final fn in response.functionCalls) {
      final args = fn.args;
      switch (fn.name) {
        case 'change_theme_color':
          final hex = args['hex'] as String;
          if (hex.length != 6) {
            actions.add(FunctionResponse(fn.name, {
              'type': 'Error',
              'message': 'hex must be exactly 6 characters',
            }));
          } else {
            themeColor.value = Color(int.parse('0xFF$hex'));
            actions.add(FunctionResponse(fn.name, {
              'type': 'Success',
              'message': 'theme color updated',
            }));
          }
          break;
        case 'change_theme_mode':
          final mode = args['mode'] as String;
          themeMode.value = switch (mode) {
            'system' => ThemeMode.system,
            'light' => ThemeMode.light,
            'dark' => ThemeMode.dark,
            (_) => ThemeMode.system,
          };
          actions.add(FunctionResponse(fn.name, {
            'type': 'Success',
            'message': 'theme mode updated',
          }));
          break;
        case 'change_text_scale_factor':
          final value = args['scale'] as num;
          textScaleFactor.value = value.toDouble();
          actions.add(FunctionResponse(fn.name, {
            'type': 'Success',
            'message': 'font scale updated',
          }));
          break;
        default:
      }
    }
    if (actions.isNotEmpty) {
      return await callWithActions([
        ...prompt,
        if (response.functionCalls.isNotEmpty)
          Content.model(response.functionCalls),
        for (final res in actions)
          Content.functionResponse(res.name, res.response),
      ]);
    }
    return response;
  }

  void addMessage(Sender sender, String value, {bool clear = false}) {
    if (clear) {
      _history.clear();
      messages.value = [];
    }
    messages.value = messages.value.toList()..add((sender, value));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: messages,
      builder: (context, child) {
        final reversed = messages.value.reversed;
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: messages.value.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('Start changing the theme! Try typing '
                        'in requests like "Make the colors darker" or "Make the '
                        'font larger" and see what happens.'),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(8),
                  reverse: true,
                  itemCount: reversed.length,
                  itemBuilder: (context, index) {
                    final (sender, message) = reversed.elementAt(index);
                    return MessageWidget(
                      isFromUser: sender == Sender.user,
                      text: message,
                    );
                  },
                ),
          bottomNavigationBar: BottomAppBar(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: textFieldDecoration(
                      context,
                      'Change the theme color, font scale factor or brightness',
                    ),
                    onEditingComplete: sendMessage,
                    onSubmitted: (value) => sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                AnimatedBuilder(
                  animation: loading,
                  builder: (context, _) {
                    if (loading.value) {
                      return const CircularProgressIndicator();
                    }
                    return IconButton(
                      onPressed: sendMessage,
                      icon: const Icon(Icons.send),
                      tooltip: 'Send a message',
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

enum Sender {
  user,
  system,
}
