import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardSmall extends StatelessWidget {
  final int order;
  final String name;
  final Color colorbasic;

final help;
  final int number;

  const CardSmall(
      {super.key,
      this.order = 0,
      required this.number,
      required this.name,
      this.colorbasic = const Color.fromARGB(255, 30, 136, 229),required this.help});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 110,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width / 2.5,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: const Color.fromARGB(255, 241, 241, 241),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("%${number.toString()}"),
                        const Gap(50),
                        const Icon(Icons.show_chart_rounded),
                      ],
                    ),
                    const Gap(10),
                    Text("$order $help")
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 22,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorbasic,
                ),
                child: Center(
                    child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
