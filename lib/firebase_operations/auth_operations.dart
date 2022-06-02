import 'package:firebase_auth/firebase_auth.dart';

class AuthOperations {
  static Future signIn({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  static Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
