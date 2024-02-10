import 'package:animate_do/animate_do.dart';
import 'package:craft/constant/categorise_list.dart';
import 'package:craft/view/client/career_and_search_page/helper/career-and-search_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categorise extends StatelessWidget {
  final double hight;
  final  numberlist;
  const Categorise({super.key, this.hight = 305, required this.numberlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: hight,
      width: MediaQuery.sizeOf(context).width - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.shade200,
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        // physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 1,
          mainAxisExtent: 100,
          crossAxisCount: 3,
        ),
        itemCount: numberlist,
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
                      Get.to(CareerAndSearchPage(
                        name: iconCastom[index]["name"],
                      ));
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
