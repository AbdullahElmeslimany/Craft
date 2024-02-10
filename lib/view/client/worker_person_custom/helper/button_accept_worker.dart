import 'package:flutter/material.dart';

buttonAcceptWorker(width, {required Function() onPressed}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Container(
        height: 50,
        width: width - 70,
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 134, 175, 136),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
            child: Text(
          "ارسال طلب",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ))),
  );
}
