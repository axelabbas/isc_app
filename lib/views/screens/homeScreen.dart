import 'package:flutter/material.dart';
import 'package:iscapp/views/widgets/homeWidgets/topicGridWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/topicWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/mainEventWidget.dart';
import "package:iscapp/models/colorsClass.dart";

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
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
                    "Welcome, USERNAME",
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
              ),
              SizedBox(
                height: 100,
              ),
              mainEventWidget("Journey to space 5", "Mon 17/5", "5:34:16",
                  "assets/images/spaceman.jpg", context),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Topics",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: myColors.primaryColor, offset: Offset(0, -10))
                    ],
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationColor: myColors.primaryColor,
                    decorationThickness: 4,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // used underline decoartion instead of divider
              // so that the underline will always equal the width of text
              // Divider(
              //   color: myColors.primaryColor,
              //   height: 5,
              //   indent: 0,
              //   endIndent: 410,
              // )
              topicGridWidget(
                [
                  topicWidget("assets/images/icons/labicon.png", "Projects"),
                  topicWidget("assets/images/icons/Workshhop.png", "Courses"),
                  topicWidget("assets/images/icons/workshopIdea.png", "Lab"),
                  topicWidget("assets/images/icons/calender.png", "Events"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
