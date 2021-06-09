import 'package:flutter/material.dart';

import '../data/book.dart';
import '../data/library_scope.dart';
import '../routing/parsed_route.dart';
import '../routing/route_state.dart';
import '../widgets/book_list.dart';

class BooksScreen extends StatefulWidget {
  final ParsedRoute currentRoute;

  const BooksScreen({
    Key? key,
    required this.currentRoute,
  }) : super(key: key);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final library = LibraryScope.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Popular',
              icon: Icon(Icons.people),
            ),
            Tab(
              text: 'New',
              icon: Icon(Icons.new_releases),
            ),
            Tab(
              text: 'All',
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BookList(
            books: library.popularBooks,
            onTap: _handleBookTapped,
          ),
          BookList(
            books: library.newBooks,
            onTap: _handleBookTapped,
          ),
          BookList(
            books: library.allBooks,
            onTap: _handleBookTapped,
          ),
        ],
      ),
    );
  }

  String get title {
    switch (_tabController.index) {
      case 1:
        return 'New';
      case 2:
        return 'All';
      case 0:
      default:
        return 'Popular';
    }
  }

  RouteState get routeState => RouteState.of(context);

  void _handleBookTapped(Book book) {
    routeState.go('/books/${book.id}');
  }

  void _handleTabIndexChanged() {
    switch (_tabController.index) {
      case 1:
        routeState.go('/books/new');
        break;
      case 2:
        routeState.go('/books/all');
        break;
      case 0:
      default:
        routeState.go('/books/popular');
        break;
    }
  }

  @override
  void didUpdateWidget(BooksScreen oldWidget) {
    var newPath = routeState.route.pathTemplate;
    if (newPath.startsWith('/books/popular')) {
      _tabController.index = 0;
    } else if (newPath.startsWith('/books/new')) {
      _tabController.index = 1;
    } else if (newPath == '/books/all') {
      _tabController.index = 2;
    }
    super.didUpdateWidget(oldWidget);
  }
}
