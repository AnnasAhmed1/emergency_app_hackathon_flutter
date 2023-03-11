import 'package:flutter/material.dart';

serviceCard(context, onTap, title) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 25,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1.0,
        color: Colors.black,
      ),
    ),
    width: MediaQuery.of(context).size.width * 0.9,
    child: Column(
      children: [
        Text(
          "${title}",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 1.0,
            // height: 100,
            padding: EdgeInsets.all(15),
            color: Colors.amber,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Text(
                  "Send Request",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            )),
      ],
    ),
  );
}
