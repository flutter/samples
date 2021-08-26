// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'book.dart';

class Author {
  final int id;
  final String name;
  final List<Book> books = <Book>[];

  Author(this.id, this.name);
}
