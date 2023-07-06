import 'package:flutter_rocket_example/models/todo.dart';
import 'package:flutter_rocket_example/requests/todos_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

class TodosExample extends StatelessWidget {
  TodosExample({Key? key, required this.title}) : super(key: key);
  final String title;
  final todoModel = Rocket.add(Todos(), readOnly: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          todoModel.all!.insert(0, Todos(title: "", completed: false));
          todoModel.rebuildWidget();
        },
      ),
      body: RocketView(
          model: todoModel,
          call: () => GetTodos.getTodos(todoModel),
          loader: const CircularProgressIndicator(),
          callType: CallType.callIfModelEmpty,
          builder: (context, state) {
            return ListView.builder(
              itemCount: todoModel.all!.length,
              itemBuilder: (context, index) {
                final todo = todoModel.all![index];
                return CheckboxListTile(
                  value: todo.completed,
                  title: TextField(
                    controller: TextEditingController(text: todo.title!),
                    onChanged: (value) {
                      todo.title = value;
                    },
                  ),
                  onChanged: (value) {
                    todo.updateFields(completedField: value);
                  },
                );
              },
            );
          }),
    );
  }
}
