import 'package:craft/constant/categorise_list.dart';
import 'package:craft/constant/constant.dart';
import 'package:craft/controller/logincontroller.dart';
import 'package:craft/model/logic_login.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletePageWorker extends StatefulWidget {
  final String emailAddress;

  final String password;
  final type;
  const CompletePageWorker(
      {super.key,
      required this.emailAddress,
      required this.password,
      required this.type});

  @override
  State<CompletePageWorker> createState() => _CompletePageWorkerState();
}

class _CompletePageWorkerState extends State<CompletePageWorker> {
  String dropDownValueGaver = list.first;
  String dropDownValueCraft = iconCastomCraft.first;
  GlobalKey<FormState> formKeyComplete = GlobalKey<FormState>();

  TextEditingController cost = TextEditingController();
  TextEditingController direction = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const Center(
                    child: Text(
                  "اكمال عمليةالتسجيل",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
                const Gap(55),
                Container(
                  height: 400,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(25)),
                  child: Form(
                    key: formKeyComplete,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("اختر المحافظة"),
                        Center(
                          child: Container(
                            height: 40,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: DropdownButton<String>(
                                value: dropDownValueGaver,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 0,
                                  color: Colors.white,
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    dropDownValueGaver = value!;
                                  });
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        const Text("اختر المهنة"),
                        Center(
                          child: Container(
                            height: 40,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: DropdownButton<String>(
                                value: dropDownValueCraft,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 0,
                                  color: Colors.white,
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    dropDownValueCraft = value!;
                                  });
                                },
                                items: iconCastomCraft
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        const Text("التكلفة في الساعة"),
                        TextFormField(
                          controller: cost,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(right: 18),
                            prefixIcon: Icon(Icons.construction),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            hintText: "ادخل التكلفة في الساعة",
                          ),
                          textAlign: TextAlign.end,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "يرجي ادخال التكلفة في الساعة";
                            }
                            return null;
                          },
                        ),
                        const Text("وصف"),
                        TextFormField(
                          maxLength: 250,
                          maxLines: 3,
                          controller: direction,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(right: 18, top: 15),
                            prefixIcon:
                                Icon(Icons.drive_file_rename_outline_outlined),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            hintText: "ادخل وصف عملك",
                          ),
                          textAlign: TextAlign.end,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'يرجي ادخال وصف';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      if (formKeyComplete.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('انتظر جاري انشاء الحساب')),
                        );

                        AuthContrroller.createAccountAuth(
                            emailAddress: widget.emailAddress,
                            password: widget.password,
                            type: widget.type,
                            cost: cost.text,
                            craft: dropDownValueCraft,
                            dircaction: direction.text,
                            name: name.text,
                            gavern: dropDownValueGaver,
                            phone: phone.text);
                      }
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width - 100,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(17)),
                      child: Center(
                          child: Text(
                        "انشاء الحساب",
                        style: GoogleFonts.alexandria(
                            color: Colors.white, fontSize: 17),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
