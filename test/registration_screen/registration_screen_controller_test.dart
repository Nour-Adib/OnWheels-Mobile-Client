import 'package:bike_sale/pages/registration_screen/controllers/registration_screen_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {

Get.testMode = true;
  group('Selection Button Controller Test Suit', () {
    test('Selection Button Initialize Test', () {
      var controller = RegistrationScreenController();
      controller.initialize();
      expect(controller.selectedButton.contains(controller.register), true);
      expect(controller.isSignIn(), equals(false));
      expect(controller.isRegister(), equals(true));
    });
    test('Selection Button setSelection Test', () {
      var controller = RegistrationScreenController();
      controller.initialize();
      controller.setSelection(controller.signIn);

      expect(controller.selectedButton.contains(controller.signIn), true);
      expect(controller.isSignIn(), equals(true));
      expect(controller.isRegister(), equals(false));
    });
  });

  Get.reset();
}
