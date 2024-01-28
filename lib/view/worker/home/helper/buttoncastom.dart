import 'package:flutter/material.dart';

class CastomButton extends StatelessWidget {
  final Color borderColor;
  final Color textColor;
  final Color colorBackGround;
  final Function() logic;
  final String namebutton;
  const CastomButton(
      {super.key,
      required this.borderColor,
      required this.namebutton,
      required this.logic,
      this.colorBackGround = Colors.white,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          color: colorBackGround,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: logic,
        child: Text(
          namebutton,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: textColor),
        ),
      ),
    );
  }
}
