import 'package:flutter/material.dart';

class CastomButton extends StatelessWidget {
  final Color basecolor;
  final Function() logic;
  final String namebutton;
  const CastomButton(
      {super.key,
      required this.basecolor,
      required this.namebutton,
      required this.logic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(color: basecolor),
          borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: logic,
        child: Text(
          namebutton,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: basecolor),
        ),
      ),
    );
  }
}
