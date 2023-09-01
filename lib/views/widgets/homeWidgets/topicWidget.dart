import "package:flutter/material.dart";
import "package:iscapp/models/colorsClass.dart";

topicWidget(image, title) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 4),
              color: Colors.black.withOpacity(0.25))
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Center(
            child: ImageIcon(
              AssetImage(image),
              color: myColors.primaryColor,
              size: 50,
            ),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Text(title,
            style: TextStyle(
                color: myColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ],
    ),
  );
}
