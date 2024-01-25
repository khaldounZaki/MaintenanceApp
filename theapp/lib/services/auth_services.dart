import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final _auth = FirebaseAuth.instance;
  Stream<User?> get authenticatinStream => _auth.authStateChanges();

  void signOut() {
    _auth.signOut();
  }

  Future<void> signIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
