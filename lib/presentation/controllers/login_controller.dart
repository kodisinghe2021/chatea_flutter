import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class LoginController {
  String error = '';
  Future<UserCredential?> firebaseLogin(String email, String password) async {
    try {
      return await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      Logger().e(e.code);
     error = e.code;
    }
  }
}
