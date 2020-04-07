import 'auth.dart';

class MockAuthService implements Auth {
  @override
  Future<User> signIn() async {
    return MockUser();
  }

  @override
  Future signOut() async {
    return null;
  }
}

class MockUser implements User {
  String get uid => "123";
}
