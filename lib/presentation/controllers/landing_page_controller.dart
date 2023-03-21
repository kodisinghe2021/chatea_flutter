import 'package:chatea_app/view/screens/first_flow_screen/auth/login_sreen.dart';
import 'package:chatea_app/view/screens/main_screen/main_tab_controller.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController {
  var userID = RxString('');

  void moveToPage() {
    if (userID.isEmpty) {
      Get.to(LoginSreen());
    } else {
      Get.to(const MainTabController());
    }
  }
}
