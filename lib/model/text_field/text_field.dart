import 'package:flutter/material.dart';

textFromFieldcustom({
  passEnable = false,
  bool rtl = false,
  maxLines = 1,
  TextInputType keyboardType = TextInputType.name,
  length = false,
  double width = 120,
  required TextEditingController controller,
  required String text,
  double hight = 23,
  double padding = 10,
  double borderCirlcle = 10,
  Color color = const Color.fromARGB(99, 192, 192, 192),
}) {
  return SizedBox(
    width: width,
    child: TextFormField(
      obscureText: passEnable,
      maxLines: maxLines,
      maxLength: length == true ? 250 : null,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '* يرجي اكمال البيانات';
        }
        return null;
      },
      controller: controller,
      style: const TextStyle(fontSize: 13),
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: padding, vertical: hight),
          filled: false,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(borderCirlcle)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderCirlcle),
              borderSide: BorderSide(
                color: color,
              )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderCirlcle),
            borderSide: BorderSide(
              color: color,
            ),
          ),
          hintText: text,
          hintStyle: const TextStyle(fontSize: 13)),
      textAlign: rtl == true ? TextAlign.end : TextAlign.start,
    ),
  );
}
