import 'package:craft/view/login_and_signup/login/loginpage.dart';
import 'package:craft/view/worker/home/helper/buttoncastom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logoremove.png",
              height: 130,
            ),
            const Gap(110),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CastomButton(
                  width: 120,
                  hight: 120,
                  circile: 80,
                  fonsize: 20,
                  colorBackGround: Colors.white,
                  textColor: const Color.fromARGB(159, 0, 166, 0),
                  borderColor: const Color.fromARGB(159, 0, 166, 0),
                  namebutton: "العميل",
                  logic: () {
                    Get.to(const LoginPage());
                  },
                ),
                CastomButton(
                  width: 120,
                  hight: 120,
                  circile: 80,
                  colorBackGround: const Color.fromARGB(233, 245, 12, 12),
                  borderColor: const Color.fromARGB(255, 255, 27, 27),
                  namebutton: "صاحب حرفة",
                  logic: () {
                    Get.to(const LoginPage());
                  },
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
