import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SeacrchPage extends StatelessWidget {
  const SeacrchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(209, 255, 160, 7),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(209, 255, 160, 7),
                  borderRadius: BorderRadius.circular(0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      width: MediaQuery.sizeOf(context).width - 55,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          textInputAction: TextInputAction.search,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          keyboardType: TextInputType.name,
                          cursorHeight: 30,
                          scrollPadding: const EdgeInsets.only(right: 15),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 10.0),
                            hintText: "مربع البحث",
                          ),
                        ),
                      )),
                ],
              ),
            ),

////////////////////////////////////////////////////////////
            const Gap(10),
            const Text(
              "نتائج البحث",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            maxRadius: 42,
                            backgroundImage: AssetImage(
                              "assets/images/worker.png",
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("علي احمد",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              const Gap(6),
                              Row(
                                children: [
                                  const Text(
                                    "دقهلية, المنصورة",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey.shade700,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
