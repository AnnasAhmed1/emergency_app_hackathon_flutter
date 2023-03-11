import 'package:flutter/material.dart';

TextNavigation(title, color, context, onPressed) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      title!,
      style: TextStyle(
        color: color,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
