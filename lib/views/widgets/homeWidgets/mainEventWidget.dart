import 'package:flutter/material.dart';
import "package:iscapp/models/colorsClass.dart";

Widget mainEventWidget(mainText, subText, time, imgPath, context) {
  final currentWidth = MediaQuery.of(context).size.width;
  return Stack(
    alignment: Alignment.topCenter,
    clipBehavior: Clip.none,
    children: [
      Container(
        height: currentWidth * 0.30,
        width: currentWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.25),
                  blurRadius: 4,
                  spreadRadius: 0)
            ],
            border: Border.all(color: myColors.primaryColor),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      Positioned(
        top: -50,
        child: Container(
          //outer container to add shadow and inner to contain image

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            //ClipRREct to give the image border Radius
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            child: Container(
              height: currentWidth * 0.25,
              width: currentWidth * 0.80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
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
              color: myColors.primaryColor,
            ),
            child: Center(
                child: Text(
              time,
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
      Positioned(
          bottom: 30,
          left: 50,
          child: Text(
            mainText,
            style: TextStyle(
                color: myColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
      Positioned(
          bottom: 10,
          left: 50,
          child: Text(
            subText,
            style: TextStyle(color: myColors.primaryColor, fontSize: 15),
          )),
    ],
  );
}
