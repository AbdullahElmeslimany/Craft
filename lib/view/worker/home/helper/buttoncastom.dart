import 'package:flutter/material.dart';

class CastomButton extends StatelessWidget {
  final Color borderColor;
  final Color textColor;
  final Color colorBackGround;
  final Function() logic;
  final String namebutton;
  final double hight;
  final double circile;
  final double width;
  final double fonsize;
  const CastomButton(
      {super.key,
      this.fonsize = 17,
      this.hight = 50,
      required this.borderColor,
      required this.namebutton,
      required this.logic,
      this.colorBackGround = Colors.white,
      required this.textColor,
      this.circile = 10,
      this.width = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
          color: colorBackGround,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(circile)),
      child: MaterialButton(
        onPressed: logic,
        child: Text(
          namebutton,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: fonsize, color: textColor),
        ),
      ),
    );
  }
}
