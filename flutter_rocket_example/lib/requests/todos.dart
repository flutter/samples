import 'package:flutter_rocket_example/models/todos.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

const String todosEndpoint = "todos";

class GetTodos {
  static Future gettodos(Todos todosModel) =>
      Rocket.get<RocketClient>().request(todosEndpoint, model: todosModel);
}
