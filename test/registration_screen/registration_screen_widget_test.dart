import 'package:bike_sale/pages/registration_screen/views/registration_screen.dart';
import 'package:bike_sale/pages/registration_screen/views/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import '../utils/test_wrapper.dart';
void main() {

  Get.testMode = true;
  group('Selection Button Widgets Test Suit', () {

    testWidgets('Registration Screen Has Correct Text', (tester) async {
      await tester.pumpWidget(testableWidget(const Registration()));

      final welcomTextFinder = find.text('Browse 1000+ bikes, scooters and motorcycles.');
      final displayImage = find.image(const AssetImage('assets/images/mountain-biking.jpg'));
      final toggleButton = find.byType(ToggleButton);

      expect(welcomTextFinder, findsOneWidget);
      expect(displayImage, findsOneWidget);
      expect(toggleButton, findsOneWidget);
    });
    testWidgets('Toggle Button Has Correct Text', (tester) async {
      await tester.pumpWidget(testableWidget(const ToggleButton()));

      final registerFinder = find.text('Register');
      final signInFinder = find.text('SignIn');

      expect(registerFinder, findsOneWidget);
      expect(signInFinder, findsOneWidget);
    });
  });

  Get.reset();
}
