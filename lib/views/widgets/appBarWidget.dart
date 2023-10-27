import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';

customAppBar(context, title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    actions: [
      ImageIcon(
        AssetImage("assets/images/logo-on.png"),
        color: myColors.primaryColor,
        size: 60,
      )
    ],
    leading: InkWell(
      onTap: Navigator.of(context).pop,
      child: Container(
        margin: EdgeInsets.all(10),
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
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(color: myColors.primaryColor),
    ),
  );
}

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
