import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserInfoCard extends StatelessWidget {
  final imagePersion;
  final String name;
  final String type;
  final id;
  final Color colorbackgraund ;
  const UserInfoCard(
      {super.key,
      required this.imagePersion,
      required this.name,
      required this.type,
      required this.id, required this.colorbackgraund});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 258,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffFFB43F),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                  ),
                  const Divider(color: Colors.white),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "ID",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w100),
                          ),
                          Text(id.toString(),
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade100,
                                  fontWeight: FontWeight.w800))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "المهنة",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w100),
                          ),
                          Text(type,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade100,
                                  fontWeight: FontWeight.w800))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 115,
              width: 170,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(imagePersion),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
