import 'package:flutter_rocket/flutter_rocket.dart';

const String todoUserIdField = "userId";
const String todoIdField = "id";
const String todoTitleField = "title";
const String todoCompletedField = "completed";

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
    userId = json[todoUserIdField];
    id = json[todoIdField];
    title = json[todoTitleField];
    completed = json[todoCompletedField];
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
    data[todoUserIdField] = userId;
    data[todoIdField] = id;
    data[todoTitleField] = title;
    data[todoCompletedField] = completed;

    return data;
  }

  @override
  get instance => Todos();
}
