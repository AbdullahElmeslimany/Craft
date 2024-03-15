import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craft/view/worker/home/worker_homepage.dart';
import 'package:get/get.dart';

abstract class DataController {
  static authAddData({
    required name,
    required mail,
    required type,
    required phone,
    gavern = "",
    craft = "",
    cost = "",
    dircaction = "",
  }) async {
    await FirebaseFirestore.instance.collection("users").add({
      "name": name,
      "mail": mail,
      "type": type,
      "phone": phone,
      "gavern": gavern,
      "craft": craft,
      "cost": cost,
      "dircaction": dircaction,
    }).then((value) {
      Get.snackbar(
          snackPosition: SnackPosition.TOP, '', 'تم انشاء الحساب بنجاح');
      if (type == "1") {
        // Get.offAll(const ButtonBarC());
      } else if (type == "2") {
        Get.offAll(const MyHomePage());
      }
    }).catchError((error) {
      Get.snackbar(
          snackPosition: SnackPosition.TOP, '', 'حدث خطاء اتناء عملية التسجيل');
    });
  }

  static getdata() async {
    QuerySnapshot dataPref =
        await FirebaseFirestore.instance.collection("users").get();
    List data = [];
    data.addAll(dataPref.docs);
    print("===============");
    print(data[0]["name"]);
    print("==============");
  }
}
