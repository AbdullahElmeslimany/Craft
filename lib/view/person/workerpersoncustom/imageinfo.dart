 import 'package:flutter/material.dart';

imageParsonInfo(width) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Hero(
          tag: "aaa",
          child: Image.asset(
            "assets/images/plumber.jpg",
            fit: BoxFit.cover,
            width: width,
          )),
    );
  }