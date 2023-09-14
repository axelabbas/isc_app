import 'package:flutter/material.dart';
import 'package:iscapp/views/screens/eventScreen.dart/eventDetailsScreen.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/topicGridWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/topicWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/mainEventWidget.dart';
import "package:iscapp/models/colorsClass.dart";

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
    with AutomaticKeepAliveClientMixin<homeScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            appBarWidget("Welcome, USERNAME"),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => eventDetailsScreen()));
              },
              child: mainEventWidget("Journey to space 5", "Mon 17/5",
                  "5:34:16", "assets/images/spaceman.jpg", context),
            ),
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
                    Shadow(color: myColors.primaryColor, offset: Offset(0, -10))
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
    );
  }
}
