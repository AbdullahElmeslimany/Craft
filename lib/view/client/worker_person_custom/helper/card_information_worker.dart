import 'package:craft/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

infoCradInformationWorker(width) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.only(
      top: 20,
      left: 15,
      right: 15,
    ),
    margin: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Hero(
                  tag: '$rateWorker',
                  child: RatingBarIndicator(
                    rating: rateWorker,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Hero(
                      tag: numberClientForWorker,
                      child: Text(numberClientForWorker)),
                ),
              ],
            ),
            Hero(
                tag: nameWorker,
                child: Text(
                  nameWorker,
                  style: const TextStyle(fontSize: 22),
                )),
          ],
        ),
        const Gap(22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "المهنة",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                const Gap(5),
                Hero(
                  tag: typeWorker,
                  child: Text(
                    typeWorker,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "العنوان",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                const Gap(5),
                Hero(
                  tag: addressWorker,
                  child: Text(
                    addressWorker,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Gap(22),
        const Text(
          "معلومات",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: const EdgeInsets.only(top: 17),
            padding: const EdgeInsets.all(17),
            width: width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const Text('''
مهندس سامح امين اخصائي اعمال الكهرباء وصيانة محتويات الالكترونيات ولدي اكثر من سنوات خبرة في المجال 
'''),
          ),
        ),
        const Gap(20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "01278457486",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.phone_android),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 25),
          child: Row(
            children: [
              Text(
                "\$20/الساعة",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  " : السعر",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
