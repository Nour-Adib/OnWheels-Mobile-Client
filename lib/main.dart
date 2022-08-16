
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/registration_screen/views/registration_screen.dart';
import 'pages/splash_screen/views/splash_screen.dart';

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
