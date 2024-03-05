import 'package:craft/view/worker/notifications_on_app/notifications_worker_page.dart';
import 'package:craft/view/worker/setting_page/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Row appBarCastom(String logo) {
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
            icon: const Icon(Icons.notifications_on_outlined),
            onPressed: () {
              Get.to(const NotificationsPage());
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
