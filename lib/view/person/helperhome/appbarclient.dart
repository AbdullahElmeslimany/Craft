import 'package:craft/view/person/notifications_person_on_app/notifications_person.dart';
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
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_on_outlined),
            onPressed: () {
              Get.to(NotificationClientPage());
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      )
    ],
  );
}
