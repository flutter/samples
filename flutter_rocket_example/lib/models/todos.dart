import 'package:flutter_rocket/flutter_rocket.dart';

const String todosUserIdField = "userId";
const String todosIdField = "id";
const String todosTitleField = "title";
const String todosCompletedField = "completed";

class Todos extends RocketModel<Todos> {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todos({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    userId = json[todosUserIdField];
    id = json[todosIdField];
    title = json[todosTitleField];
    completed = json[todosCompletedField];
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
    int? userIdField,
    int? idField,
    String? titleField,
    bool? completedField,
  }) {
    userId = userIdField ?? userId;
    id = idField ?? id;
    title = titleField ?? title;
    completed = completedField ?? completed;
    rebuildWidget(fromUpdate: true);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data[todosUserIdField] = userId;
    data[todosIdField] = id;
    data[todosTitleField] = title;
    data[todosCompletedField] = completed;

    return data;
  }

  @override
  get instance => Todos();
}
