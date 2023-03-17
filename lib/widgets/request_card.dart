import 'package:flutter/material.dart';

requestCard(context, onTap, title) {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Request form:${title}",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        Text(
          "Request to:${title}",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        Text(
          "Emergency level:${title}",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        Row(
          children: [
            Text(
              "locaion${title}",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              "get directrions${title}",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        Text(
          "${title}",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.4,
                // height: 100,
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Text(
                      "Accept Request",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.4,
                // height: 100,
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Text(
                      "Decline Request",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ],
    ),
  );
}
