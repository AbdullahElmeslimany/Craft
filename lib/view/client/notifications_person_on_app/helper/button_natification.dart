import 'package:flutter/material.dart';

buttonAcceptAndRefect() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      MaterialButton(
        onPressed: () {},
        child: Container(
          width: 90,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.red[400], borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "رفض",
              style: TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(186, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      MaterialButton(
        onPressed: () {},
        child: Container(
          width: 90,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "موافقه",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ],
  );
}
