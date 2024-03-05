import 'package:craft/model/text_field/text_field.dart';
import 'package:craft/view/client/app_bar_buttom/bar_buttom_app.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditDataPage extends StatelessWidget {
  const EditDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: "احمد");
    TextEditingController emialController =
        TextEditingController(text: "ahmed@gmail.com");
    TextEditingController phoneController =
        TextEditingController(text: "01000022255");
    TextEditingController passController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: const Text("البيانات الشخصية"),
      ),
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          margin: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 20),
                      height: 120,
                      child: Image.asset("assets/images/worker.png")),
                ),
                const Text(
                  "الاسم",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    controller: nameController,
                    text: "",
                    hight: 10,
                    width: MediaQuery.sizeOf(context).width,
                    borderCirlcle: 15),
                const Gap(25),
                const Text(
                  "رقم التليفون",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    controller: phoneController,
                    text: "",
                    hight: 10,
                    width: MediaQuery.sizeOf(context).width,
                    borderCirlcle: 15),
                const Gap(25),
                const Text(
                  "البريد الالكتروني",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    controller: emialController,
                    text: "",
                    hight: 10,
                    width: MediaQuery.sizeOf(context).width,
                    borderCirlcle: 15),
                const Gap(25),
                const Text(
                  "الباسورد",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                textFromFieldcustom(
                    passEnable: true,
                    controller: passController,
                    text: "",
                    hight: 10,
                    width: MediaQuery.sizeOf(context).width,
                    borderCirlcle: 15),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width - 50,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                    onPressed: () {
                      Get.snackbar("", "",
                          titleText: const Center(
                            child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                  "تم تحديث بياناتك بنجاح",
                                  style: TextStyle(fontSize: 17),
                                )),
                          ));
                      Get.to(const ButtonBarC());
                    },
                    child: Text(
                      "حفظ",
                      style: GoogleFonts.alexandria(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
