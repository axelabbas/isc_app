import 'package:flutter/material.dart';

Widget mainEventWidget(mainText, subText, time) {
  return Stack(
    alignment: Alignment.topCenter,
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      Positioned(
        top: -50,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          child: Container(
            height: 135,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Image.asset(
              "assets/images/spaceman.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(20)),
          child: Container(
            height: 42,
            width: 84,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Center(child: Text(time)),
          ),
        ),
      ),
      Positioned(bottom: 30, left: 10, child: Text(mainText)),
      Positioned(bottom: 10, left: 10, child: Text(subText)),
    ],
  );
}
