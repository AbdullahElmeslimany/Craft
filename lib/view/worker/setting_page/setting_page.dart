import 'package:craft/view/firstpage/firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 20),
                  height: 150,
                  child: Image.asset("assets/images/worker.png")),
              Card(
                  child: SizedBox(
                height: 70,
                child: Center(
                  child: ListTile(
                    onTap: () {
                      // Get.to(const EditDataPage());
                    },
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    title: Text(
                      "البيانات الشخصية",
                      style: GoogleFonts.alexandria(fontSize: 15),
                    ),
                  ),
                ),
              )),
              Card(
                  child: SizedBox(
                height: 70,
                child: Center(
                  child: ListTile(
                    onTap: () {},
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    title: Text(
                      "سياسات المستخدم",
                      style: GoogleFonts.alexandria(fontSize: 15),
                    ),
                  ),
                ),
              )),
              Card(
                  child: SizedBox(
                height: 70,
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Get.offAll(const FirstPage());
                    },
                    trailing: Icon(
                      Icons.exit_to_app,
                      color: Colors.red[900],
                    ),
                    title: Text(
                      "تسجيل الخروج",
                      style: GoogleFonts.alexandria(fontSize: 15),
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
