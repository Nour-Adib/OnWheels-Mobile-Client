import 'package:get/get.dart';

class RegistrationScreenController extends GetxController {
  var selectedButton = <String>[].obs;
  var width = Get.width.obs;
  var height = Get.height.obs;

  String register = 'Register';
  String signIn = 'SignIn';

  initialize() {
    selectedButton.add(register);
  }

  setSelection(String item){
    selectedButton.clear();
    selectedButton.add(item);
  }

  isSignIn() {
    return selectedButton.contains(signIn);
  }

  isRegister() {
    return selectedButton.contains(register);
  }
}
