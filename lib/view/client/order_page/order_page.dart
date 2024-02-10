import 'package:craft/constant/constant.dart';
import 'package:craft/view/client/order_page/helper/button_natification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(19),
                  child: const Text(
                    "الطلبات",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 3, top: 8),
                      height: 205,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 252, 224, 140),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Center(
                            child: Text(
                              "طلب",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              child: Image.asset(
                                                  "assets/images/worker.png"))),
                                      const Gap(5),
                                      const Text("كهربائي",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          )),
                                    ],
                                  ),
                                  RatingBarIndicator(
                                    rating: rateWorker,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 11.0,
                                    direction: Axis.horizontal,
                                  ),
                                  const Text(
                                    " (24) ",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              const Text(" محمد ايمن",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Text("بغرض تنفيذ اعمال الصيانة الكهرباء",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          const Gap(5),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(" جنيه ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  Text("450",
                                      style: TextStyle(
                                        fontSize: 15,
                                      )),
                                ],
                              ),
                              Text("   بتكلفة",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          buttonAcceptAndRefect()
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}