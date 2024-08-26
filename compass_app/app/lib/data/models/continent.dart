import 'package:freezed_annotation/freezed_annotation.dart';

part 'continent.freezed.dart';

part 'continent.g.dart';

@freezed
class Continent with _$Continent {
  const factory Continent({
    /// e.g. 'Europe'
    required String name,

    /// e.g. 'https://rstr.in/google/tripedia/TmR12QdlVTT'
    required String imageUrl,
  }) = _Continent;

  factory Continent.fromJson(Map<String, Object?> json) =>
      _$ContinentFromJson(json);
}
