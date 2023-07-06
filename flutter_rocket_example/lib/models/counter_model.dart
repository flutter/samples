import 'package:flutter_rocket/flutter_rocket.dart';

class Counter extends RocketModel<Counter> {
  int count;

  Counter({
    this.count = 0,
  });

  static String countKey = "count";

  @override
  fromJson(covariant Map<String, dynamic> json, {bool isSub = false}) {
    count = json[countKey] ?? count;
    super.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;

    return data;
  }
}
