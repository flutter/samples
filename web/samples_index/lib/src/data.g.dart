// GENERATED CODE - DO NOT MODIFY BY HAND

part of data;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map json) {
  return $checkedNew('Index', json, () {
    final val = Index(
      $checkedConvert(
          json,
          'samples',
          (v) => (v as List)
              ?.map((e) => e == null ? null : Sample.fromJson(e as Map))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$IndexToJson(Index instance) => <String, dynamic>{
      'samples': instance.samples,
    };

Sample _$SampleFromJson(Map json) {
  return $checkedNew('Sample', json, () {
    final val = Sample(
      name: $checkedConvert(json, 'name', (v) => v as String),
      author: $checkedConvert(json, 'author', (v) => v as String),
      screenshots: $checkedConvert(
          json,
          'screenshots',
          (v) => (v as List)
              ?.map((e) => e == null ? null : Screenshot.fromJson(e as Map))
              ?.toList()),
      source: $checkedConvert(json, 'source', (v) => v as String),
      web: $checkedConvert(json, 'web', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      difficulty: $checkedConvert(json, 'difficulty', (v) => v as String),
      widgets: $checkedConvert(json, 'widgets',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      packages: $checkedConvert(json, 'packages',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      tags: $checkedConvert(
          json, 'tags', (v) => (v as List)?.map((e) => e as String)?.toList()),
      platforms: $checkedConvert(json, 'platforms',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      links: $checkedConvert(
          json,
          'links',
          (v) => (v as List)
              ?.map((e) => e == null ? null : Link.fromJson(e as Map))
              ?.toList()),
      type: $checkedConvert(json, 'type', (v) => v as String),
      date: $checkedConvert(
          json, 'date', (v) => v == null ? null : DateTime.parse(v as String)),
      channel: $checkedConvert(json, 'channel', (v) => v as String),
    );
    return val;
  });
}

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
      'links': instance.links,
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'channel': instance.channel,
    };

Screenshot _$ScreenshotFromJson(Map json) {
  return $checkedNew('Screenshot', json, () {
    final val = Screenshot(
      $checkedConvert(json, 'url', (v) => v as String),
      $checkedConvert(json, 'alt', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$ScreenshotToJson(Screenshot instance) =>
    <String, dynamic>{
      'url': instance.url,
      'alt': instance.alt,
    };

Link _$LinkFromJson(Map json) {
  return $checkedNew('Link', json, () {
    final val = Link(
      $checkedConvert(json, 'text', (v) => v as String),
      $checkedConvert(json, 'href', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'text': instance.text,
      'href': instance.href,
    };
