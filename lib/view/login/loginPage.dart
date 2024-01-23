import 'package:craft/constant/constant.dart';
import 'package:craft/controller/logincontroller.dart';
import 'package:craft/model/logic_login.dart';
import 'package:craft/view/register/registerpage.dart';
import 'package:craft/view/home/homepage.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginContrroller loginContrroller = LoginContrroller();
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/two.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 55.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logoremove.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).width / 2.2,
                      width: MediaQuery.sizeOf(context).width - 40,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Form(
                        key: formKeylogin,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Email entry field
                            Container(
                              height: 200,
                              width: MediaQuery.sizeOf(context).width - 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                          labelText: "Email",
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
                                        height: 10,
                                      ),
                                      //Password entry field
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'يرجي ادخال باسورد';
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
                                          labelText: "Password",
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
                                  color: bisacColor,
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyHomePage(),
                                        ));
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
