import 'package:flutter/material.dart';

Widget courseDetailsWidget(context, icon, title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    height: MediaQuery.of(context).size.height * 0.11,
    width: MediaQuery.of(context).size.width * 0.2,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
        border: Border.all(
          color: Colors.black.withOpacity(0.25),
          width: 1,
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        icon,
        Text(
          title,
          textAlign: TextAlign.center,
          textScaleFactor: 0.8,
          maxLines: 2,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
