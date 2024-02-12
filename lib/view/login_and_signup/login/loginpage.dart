import 'package:craft/controller/logincontroller.dart';
import 'package:craft/model/logic_login.dart';
import 'package:craft/view/login_and_signup/register/registerpage.dart';
import 'package:craft/view/worker/home/worker_homepage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginContrroller loginContrroller = LoginContrroller();
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/images/two.png"),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/logoremove.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.sizeOf(context).width / 3.4,
                        width: MediaQuery.sizeOf(context).width - 250,
                      ),
                    ),
                    const Gap(30),
                    const Text(
                      "تسجيل دخول",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const Gap(12),
                    Text(
                      "يجب تسجيل الدخول لاستخدام التطبيق",
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    ),
                    const Gap(17),
                    Center(
                      child: Form(
                        key: formKeylogin,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Email entry field
                            Container(
                              height: 285,
                              width: MediaQuery.sizeOf(context).width - 20,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(111, 221, 221, 221),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "البريد الالكتروني",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const Gap(13),
                                      TextFormField(
                                        controller: email,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(Icons.email),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                          hintText: "ادخل البريد الالكتروني",
                                        ),
                                        textAlign: TextAlign.end,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'يرجي ادخال اميل';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 17,
                                      ),
                                      const Text(
                                        "الرقم السري",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const Gap(13),
                                      //Password entry field

                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'يرجي ادخال الرقم السري';
                                          }
                                          return null;
                                        },
                                        controller: password,
                                        obscureText: true,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                          prefixIcon: Icon(Icons.password),
                                          hintText: "ادخل الرقم السري",
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.sizeOf(context).width - 50,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(25)),
                              child: MaterialButton(
                                onPressed: () async {
                                  if (formKeylogin.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text('انتظر جاري تسجيل الدخول')),
                                    );
                                    loginContrroller.loginAuth(
                                        emailAddress: email.text,
                                        password: password.text,
                                        getcontext: context);
                                        // if (condition) {
                                    Get.offAll(MyHomePage());
                                          
                                        // }
                                        // else if(){

                                        // }
                                  }
                                },
                                child: const Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Calibri"),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: const Text(
                                    "انشاء حساب",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                        fontFamily: "Calibri"),
                                  ),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen(),
                                        ));
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "ليس لدي حساب",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: "Calibri"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
