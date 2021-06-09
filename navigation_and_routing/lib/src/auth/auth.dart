import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// A mock authentication service
class BookstoreAuth extends ChangeNotifier {
  bool _signedIn = false;

  bool get signedIn {
    return _signedIn;
  }

  Future<void> signOut() async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    // Sign out.
    _signedIn = false;
    notifyListeners();
  }

  Future<bool> signIn(String username, String password) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));

    // Sign in. Allow any password.
    _signedIn = true;
    notifyListeners();
    return _signedIn;
  }

  static BookstoreAuth of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<BookstoreAuthScope>()!
        .auth;
  }

  @override
  bool operator ==(Object other) {
    return other is BookstoreAuth && other._signedIn == _signedIn;
  }

  @override
  int get hashCode => _signedIn.hashCode;
}

class BookstoreAuthScope extends InheritedWidget {
  final BookstoreAuth auth;

  const BookstoreAuthScope({
    Key? key,
    required this.auth,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(BookstoreAuthScope oldWidget) =>
      auth != oldWidget.auth;
}
