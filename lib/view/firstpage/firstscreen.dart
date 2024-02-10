import 'package:craft/view/client/app_bar_buttom/bar_buttom_app.dart';
import 'package:craft/view/client/clienthome.dart';
import 'package:craft/view/worker/home/helper/buttoncastom.dart';
import 'package:craft/view/worker/home/worker_homepage.dart';
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
            CastomButton(
              colorBackGround: const Color.fromARGB(255, 255, 27, 27),
              borderColor: const Color.fromARGB(255, 255, 27, 27),
              namebutton: "صاحب حرفة",
              logic: () {
                Get.to(const MyHomePage());
              },
              textColor: Colors.white,
            ),
            const Gap(15),
            CastomButton(
              colorBackGround: Colors.green,
              textColor: Colors.white,
              borderColor: Colors.green,
              namebutton: "العميل",
              logic: () {
                Get.to(const ButtonBarC());
              },
            )
          ],
        ),
      ),
    );
  }
}
