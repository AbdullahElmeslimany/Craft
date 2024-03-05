import 'package:craft/view/client/app_bar_buttom/bar_buttom_app.dart';
import 'package:craft/view/firstpage/firstscreen.dart';
import 'package:craft/view/login_and_signup/login/loginpage.dart';
import 'package:craft/view/worker/home/worker_homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/client/edit_data/edit_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Craft',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            textTheme: TextTheme(bodyMedium: GoogleFonts.alexandria())),
        home: ButtonBarC()
        // home: FirstPage()
        // home: const MyHomePage(),
        // home: NotificationsPage()
        // const Directionality(
        // textDirection: TextDirection.rtl, child:),
        );
  }
}
