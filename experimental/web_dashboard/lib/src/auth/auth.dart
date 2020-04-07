abstract class Auth {
  Future<User> signIn();
  Future signOut();
}

abstract class User {
  String get uid;
}
