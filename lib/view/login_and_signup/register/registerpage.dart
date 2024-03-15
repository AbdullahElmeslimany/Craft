import 'package:craft/controller/logincontroller.dart';
import 'package:craft/model/logic_login.dart';
import 'package:craft/view/login_and_signup/register/complete_worker/complete_page_worker.dart';
import 'package:craft/view/login_and_signup/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 15),
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/images/three.png"),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKeyrequest,
              child: SafeArea(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/logoremove.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.sizeOf(context).width / 3.4,
                        width: MediaQuery.sizeOf(context).width - 250,
                      ),
                    ),
                    const Text(
                      "حساب جديد",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const Gap(12),
                    Text(
                      "يمكنك الان انشاء حساب جديد",
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                    const Gap(17),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.all(3),
                        width: MediaQuery.sizeOf(context).width - 20,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(116, 213, 213, 213),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "الاسم",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Gap(13),
                              TextFormField(
                                controller: name,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(Icons.person),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  hintText: "الاسم",
                                ),
                                textAlign: TextAlign.end,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'يرجي ادخال الاسم';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "البريد الالكتروني",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Gap(13),
                              TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  hintText: "البريد الالكتروني",
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
                                height: 15,
                              ),
                              const Text(
                                "رقم الهاتف",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Gap(13),
                              TextFormField(
                                controller: phone,
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  prefixIcon: Icon(Icons.phone),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  hintText: "رقم الهاتف",
                                ),
                                textAlign: TextAlign.end,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'يرجي ادخال رقم الهاتف';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "الرقم السري",
                                style: TextStyle(fontSize: 15),
                              ),
                              const Gap(13),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'يرجي ادخال الرقم السري"';
                                  }
                                  return null;
                                },
                                controller: password,
                                obscureText: true,
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  prefixIcon: Icon(Icons.password),
                                  hintText: "الرقم السري",
                                ),
                                textAlign: TextAlign.end,
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
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      child: MaterialButton(
                        onPressed: () async {
                          if (formKeyrequest.currentState!.validate()) {
                            if (type == "1") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('انتظر جاري انشاء الحساب')),
                              );

                              AuthContrroller.createAccountAuth(
                                  emailAddress: email.text,
                                  password: password.text,
                                  type: type,
                                  name: name.text,
                                  phone: phone.text,
                                  cost: "",
                                  craft: "",
                                  dircaction: "",
                                  gavern: "");
                              // await DataController.authAddData(
                              //     name: name.text,
                              //     mail: email.text,
                              //     type: type,
                              //     phone: phone,
                              //     gavern: "",
                              //     craft: "",
                              //     cost: "",
                              //     dircaction: "");
                            }
                            if (type == "2") {
                              Get.offAll(CompletePageWorker(
                                  emailAddress: email.text,
                                  password: password.text,
                                  type: type));
                            }
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
                                  builder: (context) => const LoginPage(),
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
      ),
    );
  }
}
