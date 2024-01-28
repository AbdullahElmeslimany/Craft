import 'package:animate_do/animate_do.dart';
import 'package:craft/view/worker/home/helper/appbarcastom.dart';
import 'package:craft/view/worker/home/helper/buttoncastom.dart';
import 'package:craft/view/worker/home/helper/cardinfo.dart';
import 'package:craft/view/worker/home/helper/cardsmall.dart';
import 'package:craft/view/searchpage/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String logo = "assets/images/logoremove.png";
    String imagePersion = "assets/images/worker.png";
    String name = "حسين محمد";
    String id = "457625431";
    String type = "سباك";
    Color backGroundColor = const Color(0xffFFB43F);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.white])),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            children: [
              appBarCastom(logo),
              const Gap(15),
              FadeInDown(
                  duration: const Duration(seconds: 2),
                  child: UserInfoCard(
                    imagePersion: imagePersion,
                    name: name,
                    type: type,
                    id: id,
                    colorbackgraund: backGroundColor,
                  )),
              const Gap(20),
              CastomButton(
                  logic: () {
                    Get.to(const SeacrchPage());
                  },
                  borderColor: Colors.black,
                  namebutton: "بحث عن طلبات", textColor: Colors.black,),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FadeInLeft(
                      duration: const Duration(seconds: 2),
                      child: const CardSmall(
                        help: "جنيه",
                        name: "الارباح",
                        number: 0,
                        order: 0,
                        colorbasic: Color.fromARGB(255, 245, 139, 19),
                      )),
                  FadeInRight(
                      duration: const Duration(seconds: 2),
                      child: const CardSmall(
                        help: "طلب",
                        name: "طلبات",
                        number: 0,
                        order: 0,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
