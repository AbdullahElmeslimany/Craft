import 'package:craft/constant/constant.dart';
import 'package:craft/view/person/clienthome.dart';
import 'package:craft/view/person/workerpersoncustom/helper/button_accept_worker.dart';
import 'package:craft/view/person/workerpersoncustom/helper/card_information_worker.dart';
import 'package:craft/view/person/workerpersoncustom/helper/imageinfo.dart';
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
            Get.to(ClientHome());
            Get.defaultDialog(
                title: "تم ارسال طلب", content: Text(" الي $nameWorker"));
          }),
        ],
      )),
    );
  }
}
