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

typedef Task = (
  int id, {
  String name,
  String? description,
  bool completed,
});

extension on Task {
  Map<String, Object?> toJson() {
    return {
      'id': $1,
      'name': name,
      'description': description,
      'completed': completed,
    };
  }
}

final themeColor = ValueNotifier<Color>(Colors.orangeAccent);
final tasks = ValueNotifier(<Task>[]);
int lastId = 0;

void main() {
  runApp(const GenerativeAISample(title: "Gemini Tasks"));
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
      animation: themeColor,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: widget.title,
          theme: theme(Brightness.light),
          darkTheme: theme(Brightness.dark),
          themeMode: ThemeMode.system,
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
            'add_task',
            'Add a new task to the list',
            Schema(
              SchemaType.object,
              properties: {
                'name': Schema(
                  SchemaType.string,
                ),
                'description': Schema(
                  SchemaType.string,
                  nullable: true,
                ),
              },
            ),
          ),
          FunctionDeclaration(
            'get_completed_tasks',
            'Return all the completed tasks in the list',
            Schema(
              SchemaType.object,
              properties: {
                'name': Schema(
                  SchemaType.string,
                  nullable: true,
                  description: 'Search filter for name',
                ),
                'description': Schema(
                  SchemaType.string,
                  nullable: true,
                  description: 'Search filter for description',
                ),
              },
            ),
          ),
          FunctionDeclaration(
            'get_active_tasks',
            'Return all the active tasks in the list',
            Schema(
              SchemaType.object,
              properties: {
                'name': Schema(
                  SchemaType.string,
                  nullable: true,
                  description: 'Search filter for name',
                ),
                'description': Schema(
                  SchemaType.string,
                  nullable: true,
                  description: 'Search filter for description',
                ),
              },
            ),
          ),
          FunctionDeclaration(
            'update_task',
            'Update a task in the list',
            Schema(
              SchemaType.object,
              properties: {
                'name': Schema(
                  SchemaType.string,
                  description: 'Task name',
                ),
                'description': Schema(
                  SchemaType.string,
                  nullable: true,
                  description: 'Task description',
                ),
                'completed': Schema(
                  SchemaType.boolean,
                  nullable: true,
                  description: 'Task status',
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
      prompt.writeln(
        'If the following is not a question assume'
        'it is a new task to be added:',
      );
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
      final current = tasks.value.toList();
      final args = fn.args;
      switch (fn.name) {
        case 'add_task':
          final name = args['name'] as String;
          final description = args['description'] as String?;
          final Task task = (
            ++lastId,
            name: name,
            description: description,
            completed: false,
          );
          current.add(task);
          tasks.value = current;
          actions.add(FunctionResponse(
            fn.name,
            task.toJson(),
          ));
          break;
        case 'get_completed_tasks':
          var filter =
              current.toList().where((e) => e.completed == true).toList();
          final name = args['name'] as String?;
          final description = args['description'] as String?;
          if (name != null) {
            filter = filter.where((e) => e.name.contains(name)).toList();
          }
          if (description != null) {
            filter = filter
                .where((e) => e.description?.contains(description) ?? false)
                .toList();
          }
          actions.add(FunctionResponse(
            fn.name,
            {'tasks': filter.map((e) => e.toJson()).toList()},
          ));
          break;
        case 'get_active_tasks':
          var filter =
              current.toList().where((e) => e.completed == false).toList();
          final name = args['name'] as String?;
          final description = args['description'] as String?;
          if (name != null) {
            filter = filter.where((e) => e.name.contains(name)).toList();
          }
          if (description != null) {
            filter = filter
                .where((e) => e.description?.contains(description) ?? false)
                .toList();
          }
          actions.add(FunctionResponse(
            fn.name,
            {'tasks': filter.map((e) => e.toJson()).toList()},
          ));
          break;
        case 'update_task':
          final name = args['name'] as String?;
          final idx = current.indexWhere((e) => e.name == name);
          if (idx == -1) {
            actions.add(FunctionResponse(
              fn.name,
              {"type": "error", 'message': 'Task with "$name" id not found'},
            ));
            continue;
          }
          final task = current[idx];
          current[idx] = (
            task.$1,
            name: args['name'] as String? ?? task.name,
            description: args['description'] as String? ?? task.description,
            completed: args['completed'] as bool? ?? task.completed,
          );
          tasks.value = current;
          actions.add(FunctionResponse(
            fn.name,
            current[idx].toJson(),
          ));
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
              ? const Center(child: Text('No tasks found'))
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
                      'Try "Add a task for..."'
                      'or "What are my uncompleted tasks?"',
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
