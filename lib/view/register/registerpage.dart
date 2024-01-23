import 'package:craft/model/logic_login.dart';
import 'package:craft/view/home/homepage.dart';
import 'package:craft/view/login/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/three.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKeyrequest,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logoremove.png",
                    fit: BoxFit.fill,
                    height: MediaQuery.sizeOf(context).width / 2.2,
                    width: MediaQuery.sizeOf(context).width - 40,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "حساب جديد",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: "Calibri"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      height: 330,
                      width: MediaQuery.sizeOf(context).width - 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                controller: name,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  labelText: "الاسم",
                                ),
                                textAlign: TextAlign.end,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'يرجي ادخال الاسم';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
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
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                controller: phone,
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.phone),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  labelText: "Phone",
                                ),
                                textAlign: TextAlign.end,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'يرجي ادخال رقم الهاتف';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 45,
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'يرجي ادخال باسورد';
                                  }
                                  return null;
                                },
                                controller: password,
                                obscureText: true,
                                keyboardType: TextInputType.emailAddress,
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
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width - 20,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: const Text('صاحب حرفة'),
                                      leading: Radio(
                                        value: "2",
                                        groupValue: type,
                                        onChanged: (value) {
                                          setState(() {
                                            type = value!;
                                            print(value);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: const Text('مستخدم'),
                                      leading: Radio(
                                        value: "1",
                                        groupValue: type,
                                        onChanged: (value) {
                                          setState(() {
                                            type = value!;
                                            print(value);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width - 40,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20)),
                    child: MaterialButton(
                      onPressed: () async {
                        if (formKeyrequest.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('انتظر جاري تسجيل الدخول')),
                          );

                          if (type == "1") {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: email.text, password: password.text);
                            // ignore: use_build_context_synchronously
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyHomePage(),
                                ));
                          }
                          if (type == "2") {}
                        }
                      },
                      child: const Text(
                        "انشاء حساب",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            fontFamily: "Calibri"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: const Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontFamily: "Calibri"),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "لدي حساب",
                        style: TextStyle(
                            fontSize: 20,
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
        ),
      ),
    );
  }
}
