import 'package:craft/view/client/setting_page/setting_page.dart';
import 'package:craft/view/searchpage/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Row appBarClient(String logo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(logo),
            )),
      ),
      Row(
        children: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              Get.to(SeacrchPage());
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Get.to(const SettingPage());
            },
          )
        ],
      )
    ],
  );
}
