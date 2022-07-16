import 'package:get/get.dart';

class RegistrationScreenController extends GetxController {
  var selectedButton = <String>[].obs;
  var width = Get.width;
  var height = Get.height.obs;
  String register = 'Register';
  String signIn = 'SignIn';

  add(String item) {
    selectedButton.add(item);
  }

  isSignIn() {
    return selectedButton.contains(signIn);
  }

  isRegister() {
    return selectedButton.contains(register);
  }
}
