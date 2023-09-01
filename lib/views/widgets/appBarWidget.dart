import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';

appBarWidget(title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  color: Colors.black.withOpacity(0.25))
            ]),
        child: Icon(Icons.menu),
      ),
      Text(
        title,
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
        ),
      ),
      ImageIcon(
        AssetImage("assets/images/logo-on.png"),
        color: myColors.primaryColor,
        size: 60,
      )
    ],
  );
}
