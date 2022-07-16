import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  var width = Get.width;
  @override
  void onInit() {
    super.onInit();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Get.offNamed('/registration');
  }
}
