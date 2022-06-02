import 'package:projeto_estagio/firebase_operations/auth_operations.dart';

class AuthRepository {
  static signIn({
    required String email,
    required String password,
  }) {
    try {
      AuthOperations.signIn(email: email, password: password);
    } catch (err) {
      throw Error();
    }
  }

  static signOut() {
    try {
      AuthOperations.signOut();
    } catch (err) {
      throw Error();
    }
  }
}
