import 'package:flutter_rocket/flutter_rocket.dart';

const String postUserIdField = "userId";
const String postIdField = "id";
const String postTitleField = "title";
const String postBodyField = "body";

class Post extends RocketModel<Post> {
  int? userId;
  int? id;
  String? title;
  String? body;
  // disable logs debugging
  @override
  bool get enableDebug => true;
  Post({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    userId = json[postUserIdField];
    id = json[postIdField];
    title = json[postTitleField];
    body = json[postBodyField];
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
    int? userIdField,
    int? idField,
    String? titleField,
    String? bodyField,
  }) {
    userId = userIdField ?? userId;
    id = idField ?? id;
    title = titleField ?? title;
    body = bodyField ?? body;
    rebuildWidget(fromUpdate: true);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data[postUserIdField] = userId;
    data[postIdField] = id;
    data[postTitleField] = title;
    data[postBodyField] = body;

    return data;
  }

  @override
  get instance => Post();
}
