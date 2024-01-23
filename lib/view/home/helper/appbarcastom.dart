import 'package:flutter/material.dart';

Row appBarCastom(String logo) {
    return 
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(logo),
                      )),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications_on_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            );
  }