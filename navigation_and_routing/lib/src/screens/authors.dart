import 'package:flutter/material.dart';

import '../data/library_scope.dart';
import '../routing/route_state.dart';
import '../widgets/author_list.dart';

class AuthorsScreen extends StatelessWidget {
  final String title = "Authors";

  const AuthorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: AuthorList(
        authors: LibraryScope.of(context).allAuthors,
        onTap: (author) {
          RouteState.of(context).go('/authors/${author.id}');
        },
      ),
    );
  }
}
