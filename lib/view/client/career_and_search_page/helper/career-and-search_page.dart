import 'package:animate_do/animate_do.dart';
import 'package:craft/constant/constant.dart';
import 'package:craft/view/client/career_and_search_page/card_worker_search.dart';
import 'package:craft/view/client/career_and_search_page/helper/search_card.dart';
import 'package:craft/view/client/worker_person_custom/worker_person__custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CareerAndSearchPage extends StatefulWidget {
  final String name;
  const CareerAndSearchPage({super.key, required this.name});

  @override
  State<CareerAndSearchPage> createState() => _CareerAndSearchPageState();
}

class _CareerAndSearchPageState extends State<CareerAndSearchPage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              widget.name,
              style: GoogleFonts.alexandria(),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 130,
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FadeInLeftBig(child: dropDownButtonCastom(list: list)),
                      FadeInRightBig(
                        child: buttonSearch(
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: FadeInUpBig(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return cardWorkerForSearch(
                          nameWorker: nameWorker,
                          imageWorker: imageWorker,
                          addressWorker: addressWorker,
                          typeWorker: typeWorker,
                          numberClientForWorker: numberClientForWorker,
                          rateWorker: rateWorker,
                          onTap: () {
                            Get.to(const WorkerPersonCastomPage());
                          });
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Container dropDownButtonCastom({
    required list,
  }) {
    return Container(
      height: 40,
      width: 170,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 0,
            color: Colors.white,
          ),
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
