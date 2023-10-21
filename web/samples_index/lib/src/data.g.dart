// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map json) => $checkedCreate(
      'Index',
      json,
      ($checkedConvert) {
        final val = Index(
          $checkedConvert(
              'samples',
              (v) => (v as List<dynamic>)
                  .map((e) => Sample.fromJson(e as Map))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$IndexToJson(Index instance) => <String, dynamic>{
      'samples': instance.samples,
    };

Sample _$SampleFromJson(Map json) => $checkedCreate(
      'Sample',
      json,
      ($checkedConvert) {
        final val = Sample(
          name: $checkedConvert('name', (v) => v as String),
          author: $checkedConvert('author', (v) => v as String? ?? 'Flutter'),
          screenshots: $checkedConvert(
              'screenshots',
              (v) => (v as List<dynamic>)
                  .map((e) => Screenshot.fromJson(e as Map))
                  .toList()),
          source: $checkedConvert('source', (v) => v as String),
          web: $checkedConvert('web', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String),
          difficulty:
              $checkedConvert('difficulty', (v) => v as String? ?? 'beginner'),
          widgets: $checkedConvert(
              'widgets',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          packages: $checkedConvert(
              'packages',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          tags: $checkedConvert(
              'tags',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          platforms: $checkedConvert(
              'platforms',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          type: $checkedConvert('type', (v) => v as String),
          date: $checkedConvert(
              'date', (v) => v == null ? null : DateTime.parse(v as String)),
          channel: $checkedConvert('channel', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SampleToJson(Sample instance) => <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'screenshots': instance.screenshots,
      'source': instance.source,
      'web': instance.web,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'widgets': instance.widgets,
      'packages': instance.packages,
      'tags': instance.tags,
      'platforms': instance.platforms,
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'channel': instance.channel,
    };

Screenshot _$ScreenshotFromJson(Map json) => $checkedCreate(
      'Screenshot',
      json,
      ($checkedConvert) {
        final val = Screenshot(
          $checkedConvert('url', (v) => v as String),
          $checkedConvert('alt', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ScreenshotToJson(Screenshot instance) =>
    <String, dynamic>{
      'url': instance.url,
      'alt': instance.alt,
    };
