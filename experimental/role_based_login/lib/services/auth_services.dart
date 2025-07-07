import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<String?> signInWithEmailAndPassword(String email, String password, String role) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      final doc = await _firestore.collection('users').doc(result.user!.uid).get();
      if (!doc.exists || doc.data()!['role'] != role) {
        return 'Invalid role or user not found';
      }
      return null;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> signUp(String email, String password, String role) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await _firestore.collection('users').doc(result.user!.uid).set({
        'email': email,
        'role': role,
      });
      return null;
    } catch (e) {
      return e.toString();
    }
  }
}