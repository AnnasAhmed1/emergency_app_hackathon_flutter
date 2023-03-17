import 'package:flutter/material.dart';

textWidget({
  String data = "",
  hexColor = 0xffffffff,
  double fontSize = 16.0,
  bool bold = false,
  bool center = false,
}) {
  return Text(
    data,
    style: TextStyle(
      color: Color(hexColor),
      fontSize: fontSize,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    ),
    textAlign: center ? TextAlign.center : TextAlign.left,
  );
}
