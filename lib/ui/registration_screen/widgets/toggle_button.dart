import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/registration_screen_controller.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegistrationScreenController c = Get.find();

    return Container(
      padding: const EdgeInsets.all(3.0),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: const Color(0xFFE9ECF4),
      ),
      child: Obx(
        () => IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  c.selectedButton.value = <String>[];
                  c.add(c.register);
                },
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                        c.isRegister() ? Colors.blue : const Color(0xFFE9ECF4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          color: c.isRegister() ? Colors.white : Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  c.selectedButton.value = <String>[];
                  c.add(c.signIn);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: c.isSignIn() ? Colors.blue : const Color(0xFFE9ECF4),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'SignIn',
                        style: TextStyle(
                          color: c.isSignIn() ? Colors.white : Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
