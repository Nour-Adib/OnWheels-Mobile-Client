import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/splash_screen_controller.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashScreenController c = Get.put(SplashScreenController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image(
            image: const AssetImage('assets/images/OnWheels_Logo_Light.png'),
            width: c.width * 0.4,
          ),
        ),
      ),
    );
  }
}
