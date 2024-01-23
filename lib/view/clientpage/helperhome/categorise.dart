import 'package:animate_do/animate_do.dart';
import 'package:craft/view/clientpage/servicepage/servicepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categorise extends StatelessWidget {
  const Categorise({super.key});

  @override
  Widget build(BuildContext context) {
    List iconCastom = [
      {"icon": "assets/icons/icon1.png", "name": "كهرباء"},
      {"icon": "assets/icons/icon2.png", "name": "TV"},
      {"icon": "assets/icons/icon3.png", "name": "تكييفات"},
      {"icon": "assets/icons/icon4.png", "name": "تنظيف"},
      {"icon": "assets/icons/icon5.png", "name": "دهانات"},
      {"icon": "assets/icons/icon6.png", "name": "غسالات"},
      {"icon": "assets/icons/icon7.png", "name": "سباكة"},
      {"icon": "assets/icons/icon8.png", "name": "كهرباء"},
      {"icon": "assets/icons/icon9.png", "name": "صرف"},
    ];

    return Container(
      height: 305,
      width: MediaQuery.sizeOf(context).width - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.shade200,
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 1,
          mainAxisExtent: 100,
          crossAxisCount: 3,
        ),
        itemCount: iconCastom.length,
        itemBuilder: (BuildContext context, int index) {
          return FadeIn(
            duration: const Duration(milliseconds: 4000),
            child: Column(
              children: [
                Center(
                  child: InkWell(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                        child: Image.asset(
                          iconCastom[index]["icon"],
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(ServisePage(name: iconCastom[index]["name"]));
                    },
                  ),
                ),
                Text(iconCastom[index]["name"])
              ],
            ),
          );
        },
      ),
    );
  }
}
