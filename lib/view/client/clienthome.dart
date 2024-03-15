import 'package:animate_do/animate_do.dart';
import 'package:craft/view/client/helperhome/appbarclient.dart';
import 'package:craft/view/client/helperhome/categorise.dart';
import 'package:craft/view/client/categorise_page/categorise_page.dart';
import 'package:craft/view/client/helperhome/slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ClientHome extends StatelessWidget {
  const ClientHome({super.key});

  @override
  Widget build(BuildContext context) {
    String logo = "assets/images/logoremove.png";

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            appBarClient(logo),
            const Divider(
              height: 1,
            ),
            const Gap(5),
            FadeInRightBig(
              duration: const Duration(seconds: 2),
              child: const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  "العروض",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Gap(11),
            FadeInDownBig(
                duration: const Duration(milliseconds: 1500),
                child: imageSlider()),
            const Gap(15),
            const Divider(
              height: 1,
            ),
            const Gap(7),
            FadeInRightBig(
              duration: const Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Get.to(const CategoriseAllPage());
                      },
                      child: const Text(
                        "الكل",
                        style: TextStyle(
                            color: Color.fromARGB(207, 99, 156, 255),
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      "الصيانة",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(8),
            const Center(
                child: Categorise(
              numberlist: 9,
            )),
            Center(
              child: Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width - 25,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(193, 251, 64, 39),
                    borderRadius: BorderRadius.circular(15)),
                child: const Directionality(
                  textDirection: TextDirection.rtl,
                  child: Center(
                    child: Text(
                      "لايجاد عامل الموضوع اصبح سهلا\nكل ما عليك سواء ايجاد نوع المشكلة وسيظر لك ما تحتاج",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
