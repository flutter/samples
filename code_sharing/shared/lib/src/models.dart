import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@Freezed()
class Increment with _$Increment {
  const factory Increment({required int by}) = _Increment;

  factory Increment.fromJson(Map<String, dynamic> json) =>
      _$IncrementFromJson(json);
}

@Freezed()
class Count with _$Count {
  const factory Count(int value) = _Count;

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}
