import 'package:craft/view/clientpage/clienthome.dart';
import 'package:craft/view/home/homepage.dart';
import 'package:craft/view/login/loginPage.dart';
import 'package:craft/view/searchpage/searchpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          textTheme: TextTheme(bodyMedium: GoogleFonts.alexandria())
        ),
        // home: LoginPage()
        home: ClientHome()
        // const Directionality(
        //     textDirection: TextDirection.rtl, child:),
        );
  }
}
