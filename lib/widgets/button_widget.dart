import 'package:flutter/material.dart';

ButtonWidget(title, context, onTap) {
  return (InkWell(
    onTap: onTap,
    child: Container(
        height: 43,
        width: MediaQuery.of(context).size.width * 0.6,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.16),
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          title,
          style: TextStyle(
    fontSize: 15.0,
    fontFamily: "Poppins",
    color: Color(0xffffffff),
    fontWeight: FontWeight.w500,
  ),
          textAlign: TextAlign.center,
        )),
  ));
}
