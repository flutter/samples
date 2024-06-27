class Destination {
  Destination({
    required this.ref,
    required this.name,
    required this.country,
    required this.continent,
    required this.knownFor,
    required this.tags,
    required this.imageUrl,
  });

  /// e.g. 'alaska'
  final String ref;

  /// e.g. 'Alaska'
  final String name;

  /// e.g. 'United States'
  final String country;

  /// e.g. 'North America'
  final String continent;

  /// e.g. 'Alaska is a haven for outdoor enthusiasts ...'
  final String knownFor;

  /// e.g. ['Mountain', 'Off-the-beaten-path', 'Wildlife watching']
  final List<String> tags;

  /// e.g. 'https://storage.googleapis.com/tripedia-images/destinations/alaska.jpg'
  final String imageUrl;

  @override
  String toString() {
    return 'Destination{ref: $ref, name: $name, country: $country, continent: $continent, knownFor: $knownFor, tags: $tags, imageUrl: $imageUrl}';
  }
}
