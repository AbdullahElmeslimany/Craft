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
  final data;
  const MyHomePage({super.key, this.data});

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
                namebutton: "بحث عن طلبات",
                textColor: Colors.black,
              ),
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
              Container(
                padding: const EdgeInsets.all(20),
                height: 185,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(15)),
                child: const Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "* يمكنك تحقيق الارباح عن طريق طلب مقتراحات او عروض من الزبائن"),
                      Text(
                          "*تستطيع مشاهدة عدد الاعمال والطلبات في الوجهة الرئيسية"),
                      Text(
                          "*ميزة جديدة للبحث عن طلبات من العملاء واعطاء عروض لهم"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
