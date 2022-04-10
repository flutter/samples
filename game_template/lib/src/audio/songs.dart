const Set<Song> songs = {
  // Filenames with whitespace break package:audioplayers on iOS
  // (as of February 2022), so we use no whitespace.
  Song('Mr_Smith-Azul.mp3', 'Azul'),
  Song('Mr_Smith-Sonorus.mp3', 'Sonorus'),
  Song('Mr_Smith-Sunday_Solitude.mp3', 'SundaySolitude'),
};

class Song {
  final String filename;

  final String author = 'Mr Smith';

  final String name;

  const Song(this.filename, this.name);

  @override
  String toString() => 'Song<$filename>';
}
