import 'package:chatea_app/presentation/controllers/login_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserDependency extends GetxController {
  late LoginController _loginController;
  var userEmail = RxString('');
  var userID = RxString('');

  Future<void> login(String email, String password) async {
    UserCredential? userCredintial =
        await _loginController.firebaseLogin(email, password);
    if (userCredintial != null) {
      userEmail = RxString(userCredintial.user!.email.toString());
      userID = RxString(userCredintial.user!.uid.toString());
      update();
    }
  }
}
