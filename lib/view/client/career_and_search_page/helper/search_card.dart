import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

MaterialButton buttonSearch({required Function() onPressed}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Container(
        height: 40,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          "بحث",
          style: GoogleFonts.alexandria(fontSize: 17),
        ))),
  );
}
