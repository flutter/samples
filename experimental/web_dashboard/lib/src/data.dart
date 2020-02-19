/// A number tracked at a point in time
class Entry {
  final int value;
  final DateTime time;

  Entry(this.value, this.time);
}

/// Something being tracked.
class Item {
  final String name;
  String id;

  Item(this.name);
}
