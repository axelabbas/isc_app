import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/screens/notifications/notifications.dart';
import 'package:iscapp/views/screens/settings/settings.dart';

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

appBarWidget(context, title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SettingsScreen())),
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
          Icons.menu,
          color: myColors.primaryColor,
        ),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(
        color: myColors.primaryColor,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return NotficationsScreen();
          }));
        },
        child: ImageIcon(
          AssetImage("assets/images/logo-on.png"),
          color: myColors.primaryColor,
          size: 60,
        ),
      )
    ],
  );
}
