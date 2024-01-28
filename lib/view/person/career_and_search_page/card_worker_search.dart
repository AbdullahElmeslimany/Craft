import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

cardWorkerForSearch(
    {required nameWorker,
    required imageWorker,
    required addressWorker,
    required typeWorker,
    required numberClientForWorker,
    required rateWorker,
    required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(15),
      height: 145,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Hero(
                  tag: imageWorker,
                  child: Image.asset(
                    imageWorker,
                    height: 160,
                    width: 40,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                width: 80,
                color: Colors.white54,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Hero(
                      tag: nameWorker,
                      child: Text(
                        nameWorker,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const Gap(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          typeWorker,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          addressWorker,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        children: [
                          RatingBarIndicator(
                            rating: rateWorker,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            direction: Axis.horizontal,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Text(numberClientForWorker),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}
