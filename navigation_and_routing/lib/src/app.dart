// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:bookstore/src/auth.dart';
import 'package:bookstore/src/data.dart';
import 'package:bookstore/src/screens/author_details.dart';
import 'package:bookstore/src/screens/book_details.dart';
import 'package:bookstore/src/screens/books.dart';
import 'package:bookstore/src/screens/sign_in.dart';
import 'package:bookstore/src/widgets/fade_transition_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/authors.dart';
import 'screens/scaffold.dart';
import 'screens/settings.dart';
import 'widgets/book_list.dart';

final appShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'app shell');
final booksNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'books shell');

class Bookstore extends StatefulWidget {
  const Bookstore({super.key});

  @override
  State<Bookstore> createState() => _BookstoreState();
}

class _BookstoreState extends State<Bookstore> {
  final BookstoreAuth auth = BookstoreAuth();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        if (child == null) {
          throw ('No child in .router constructor builder');
        }
        return BookstoreAuthScope(
          notifier: auth,
          child: child,
        );
      },
      routerConfig: GoRouter(
        refreshListenable: auth,
        debugLogDiagnostics: true,
        initialLocation: '/books/popular',
        redirect: (context, state) {
          final signedIn = BookstoreAuth.of(context).signedIn;
          if (state.location != '/sign-in' && !signedIn) {
            return '/sign-in';
          }
          return null;
        },
        routes: [
          ShellRoute(
            navigatorKey: appShellNavigatorKey,
            builder: (context, state, child) {
              return BookstoreScaffold(
                child: child,
              );
            },
            routes: [
              ShellRoute(
                pageBuilder: (context, state, child) {
                  return FadeTransitionPage<dynamic>(
                    key: state.pageKey,
                    // Use a builder to get the correct BuildContext
                    // TODO (johnpryan): remove when https://github.com/flutter/flutter/issues/108177 lands
                    child: Builder(builder: (context) {
                      return BooksScreen(
                        child: child,
                        onTap: (idx) {
                          switch (idx) {
                            case 1:
                              GoRouter.of(context).go('/books/new');
                              break;
                            case 2:
                              GoRouter.of(context).go('/books/all');
                              break;
                            case 0:
                            default:
                              GoRouter.of(context).go('/books/popular');
                          }
                        },
                      );
                    }),
                  );
                },
                routes: [
                  GoRoute(
                    path: '/books/popular',
                    pageBuilder: (context, state) {
                      return FadeTransitionPage<dynamic>(
                        // Use a builder to get the correct BuildContext
                        // TODO (johnpryan): remove when https://github.com/flutter/flutter/issues/108177 lands
                        key: state.pageKey,
                        child: Builder(
                          builder: (context) {
                            return BookList(
                              books: libraryInstance.popularBooks,
                              onTap: (book) {
                                GoRouter.of(context)
                                    .go('/books/popular/book/${book.id}');
                              },
                            );
                          },
                        ),
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'book/:bookId',
                        parentNavigatorKey: appShellNavigatorKey,
                        builder: (context, state) {
                          return BookDetailsScreen(
                            book: libraryInstance
                                .getBook(state.params['bookId'] ?? ''),
                          );
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: '/books/new',
                    pageBuilder: (context, state) {
                      return FadeTransitionPage<dynamic>(
                        key: state.pageKey,
                        // Use a builder to get the correct BuildContext
                        // TODO (johnpryan): remove when https://github.com/flutter/flutter/issues/108177 lands
                        child: Builder(
                          builder: (context) {
                            return BookList(
                              books: libraryInstance.newBooks,
                              onTap: (book) {
                                GoRouter.of(context)
                                    .go('/books/new/book/${book.id}');
                              },
                            );
                          },
                        ),
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'book/:bookId',
                        parentNavigatorKey: appShellNavigatorKey,
                        builder: (context, state) {
                          return BookDetailsScreen(
                            book: libraryInstance
                                .getBook(state.params['bookId'] ?? ''),
                          );
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: '/books/all',
                    pageBuilder: (context, state) {
                      return FadeTransitionPage<dynamic>(
                        key: state.pageKey,
                        // Use a builder to get the correct BuildContext
                        // TODO (johnpryan): remove when https://github.com/flutter/flutter/issues/108177 lands
                        child: Builder(
                          builder: (context) {
                            return BookList(
                              books: libraryInstance.allBooks,
                              onTap: (book) {
                                GoRouter.of(context)
                                    .go('/books/all/book/${book.id}');
                              },
                            );
                          },
                        ),
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'book/:bookId',
                        parentNavigatorKey: appShellNavigatorKey,
                        builder: (context, state) {
                          return BookDetailsScreen(
                            book: libraryInstance
                                .getBook(state.params['bookId'] ?? ''),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: '/authors',
                pageBuilder: (context, state) {
                  return FadeTransitionPage<dynamic>(
                    key: state.pageKey,
                    child: Builder(builder: (context) {
                      return AuthorsScreen(
                        onTap: (author) {
                          GoRouter.of(context)
                              .go('/authors/author/${author.id}');
                        },
                      );
                    }),
                  );
                },
                routes: [
                  GoRoute(
                    path: 'author/:authorId',
                    builder: (context, state) {
                      final author = libraryInstance.allAuthors.firstWhere(
                          (author) =>
                              author.id ==
                              int.parse(state.params['authorId']!));
                      // Use a builder to get the correct BuildContext
                      // TODO (johnpryan): remove when https://github.com/flutter/flutter/issues/108177 lands
                      return Builder(builder: (context) {
                        return AuthorDetailsScreen(
                          author: author,
                          onBookTapped: (book) {
                            GoRouter.of(context)
                                .go('/books/all/book/${book.id}');
                          },
                        );
                      });
                    },
                  )
                ],
              ),
              GoRoute(
                path: '/settings',
                pageBuilder: (context, state) {
                  return FadeTransitionPage<dynamic>(
                    key: state.pageKey,
                    child: const SettingsScreen(),
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/sign-in',
            builder: (context, state) {
              // Use a builder to get the correct BuildContext
              // TODO (johnpryan): remove when https://github.com/flutter/flutter/issues/108177 lands
              return Builder(
                builder: (context) {
                  return SignInScreen(
                    onSignIn: (value) async {
                      final router = GoRouter.of(context);
                      await BookstoreAuth.of(context)
                          .signIn(value.username, value.password);
                      router.go('/books/popular');
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
