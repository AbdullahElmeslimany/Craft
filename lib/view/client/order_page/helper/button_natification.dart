import 'package:flutter/material.dart';
import 'package:get/get.dart';

buttonAcceptAndRefect() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      MaterialButton(
        onPressed: () {
          Get.defaultDialog(
              title: "",
              content: const Text(
                "تم رفض الطلب",
                style: TextStyle(fontSize: 16),
              ));
        },
        child: Container(
          width: 90,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.red[400], borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "رفض",
              style: TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(186, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      MaterialButton(
        onPressed: () {
          Get.defaultDialog(
              title: "",
              content: const Text(
                "تم قبول الطلب",
                style: TextStyle(fontSize: 16),
              ));
        },
        child: Container(
          width: 90,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "موافقه",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ],
  );
}
