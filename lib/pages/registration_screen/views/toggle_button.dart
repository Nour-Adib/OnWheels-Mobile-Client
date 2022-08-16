import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/registration_screen_controller.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegistrationScreenController c = Get.find();

    c.initialize();

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
        color: const Color(0xFFBCC8D3),
      ),
      child: Obx(
        () => IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  c.setSelection(c.register);
                },
                child: Container(
                  height: 50,
                  width: c.width.value * 0.3,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: c.isRegister()
                        ? const Color(0xFF293F73)
                        : const Color(0xFFBCC8D3),
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
                  c.setSelection(c.signIn);
                },
                child: Container(
                  height: 50,
                  width: c.width.value * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: c.isSignIn()
                        ? const Color(0xFF293F73)
                        : const Color(0xFFBCC8D3),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
