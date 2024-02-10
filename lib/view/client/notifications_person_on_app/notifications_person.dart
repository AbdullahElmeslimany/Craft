import 'package:craft/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class NotificationClientPage extends StatelessWidget {
  const NotificationClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    List natifiData = [
      {
        "name": "محمد ايمن",
        "type": "كهربائي",
        "rate": "24",
        "star": 3.5,
        "event": 0,
      },
      {
        "name": "عمر سامح",
        "type": "كهربائي",
        "rate": "120",
        "star": 4,
        "event": 1,
      }
    ];
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(19),
                  child: const Text(
                    "الاشعارات",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 3, top: 8),
                      height: 150,
                      decoration: BoxDecoration(
                          color: natifiData[index]["event"] == 0
                              ? const Color.fromARGB(173, 254, 94, 83)
                              : const Color.fromARGB(173, 229, 229, 229),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Center(
                            child: Text(
                              "حالة الطلب",
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
                                      Text(natifiData[index]["type"],
                                          style: const TextStyle(
                                            color: Colors.white,
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
                                  Text(
                                    " (${natifiData[index]["rate"]}) ",
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              Text(natifiData[index]["name"],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Text(
                              natifiData[index]["event"] == 0
                                  ? "تم رفض الطلب المقدم"
                                  : "تم قبول الطلب المقدم",
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
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
