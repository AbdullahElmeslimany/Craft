import 'package:craft/constant/constant.dart';
import 'package:craft/view/client/app_bar_buttom/bar_buttom_app.dart';
import 'package:craft/view/client/clienthome.dart';
import 'package:craft/view/client/worker_person_custom/helper/button_accept_worker.dart';
import 'package:craft/view/client/worker_person_custom/helper/card_information_worker.dart';
import 'package:craft/view/client/worker_person_custom/imageinfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkerPersonCastomPage extends StatelessWidget {
  const WorkerPersonCastomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          imageParsonInfo(MediaQuery.sizeOf(context).width),
          Expanded(
            child: infoCradInformationWorker(MediaQuery.sizeOf(context).width),
          ),
          buttonAcceptWorker(MediaQuery.sizeOf(context).width, onPressed: () {
            Get.offAll(ButtonBarC());
            Get.defaultDialog(
                title: "تم ارسال طلب", content: Text(" الي $nameWorker"));
          }),
        ],
      )),
    );
  }
}
