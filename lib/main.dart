import 'package:bike_sale/ui/registration_screen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bike_sale/ui/splash_screen/splash_screen.dart';

void main() => runApp(
      GetMaterialApp(
        title: 'OnWheels',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page: () => const Splash()),
          GetPage(
              name: '/registration',
              page: () => const Registration(),
              transition: Transition.zoom),
        ],
      ),
    );
