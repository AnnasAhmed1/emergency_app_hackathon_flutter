import 'package:flutter/material.dart';

openBottomSheet(context, List level, onTap(i)) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        // height: 100,
        // color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              const Text(
                "Choose your emergency level",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: level.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        onTap(level[i]);
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.green,
                        ),
                        width: MediaQuery.of(context).size.width * 1.0,
                        child: Text(
                          level[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )

              // GestureDetector(
              //   onTap: onTap,
              //   child: Container(
              //     margin: EdgeInsets.all(5),
              //     padding: EdgeInsets.all(15),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50.0),
              //       color: Colors.green,
              //     ),
              //     width: MediaQuery.of(context).size.width * 1.0,
              //     child: Text(
              //       level[0],
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     margin: EdgeInsets.all(5),
              //     padding: EdgeInsets.all(15),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50.0),
              //       color: Colors.green,
              //     ),
              //     width: MediaQuery.of(context).size.width * 1.0,
              //     child: Text(
              //       level[1],
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     margin: EdgeInsets.all(5),
              //     padding: EdgeInsets.all(15),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50.0),
              //       color: Colors.green,
              //     ),
              //     width: MediaQuery.of(context).size.width * 1.0,
              //     child: Text(
              //       level[2],
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
    },
  );
}
