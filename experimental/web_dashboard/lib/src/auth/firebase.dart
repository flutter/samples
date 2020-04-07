import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart' hide FirebaseUser;

import 'auth.dart';

class FirebaseAuthService implements Auth {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> signIn() async {
    GoogleSignInAccount googleUser;
    if (await _googleSignIn.isSignedIn()) {
      googleUser = await _googleSignIn.signInSilently();
    } else {
      googleUser = await _googleSignIn.signIn();
    }

    var googleAuth = await googleUser.authentication;

    var credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    var authResult = await _auth.signInWithCredential(credential);

    return _FirebaseUser(authResult.user.uid);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}

class _FirebaseUser implements User {
  final String uid;

  _FirebaseUser(this.uid);
}
