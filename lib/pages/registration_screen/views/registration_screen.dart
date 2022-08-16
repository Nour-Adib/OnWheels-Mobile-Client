import 'package:bike_sale/pages/registration_screen/views/toggle_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registration_screen_controller.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegistrationScreenController c =
        Get.put(RegistrationScreenController());
    return Scaffold(
      backgroundColor: const Color(0xFFE6F0EF),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Obx(
              () => SizedBox(
                width: c.width.value,
                child: Column(
                  children: [
                    Container(
                      width: c.width.value * 0.9,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          width: c.width.value * 0.9,
                          image: const AssetImage(
                              'assets/images/mountain-biking.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        'Browse 1000+ bikes, scooters and motorcycles.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const ToggleButton(),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: c.width.value * 0.7,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF293F73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Let\'s go',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: c.width.value * 0.1,
                            ),
                            const Image(
                              color: Colors.white,
                              image:
                                  AssetImage('assets/images/fast-delivery.png'),
                              height: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
