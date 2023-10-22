import 'package:flutter/material.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/profileWidgets/statsCardWidget.dart';
import 'package:iscapp/views/widgets/profileWidgets/statsTileWidget.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            appBarWidget("Profile"),
            SizedBox(
              height: 25,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/spaceman.jpg"),
              radius: 75,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "James Arthus",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Computer Science, 3rd",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                statsCardWidget("assets/images/icons/taskList.png", "26",
                    "Signups", context),
                SizedBox(
                  width: 20,
                ),
                statsCardWidget(
                    "assets/images/icons/Trophy.png", "15", "Rank", context),
                SizedBox(
                  width: 20,
                ),
                statsCardWidget(
                    "assets/images/icons/Points.png", "26", "Points", context),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            statsTileWidget("assets/images/icons/Trophy.png", "15",
                "UOT leaderboard ranking"),
            statsTileWidget(
                "assets/images/icons/Points.png", "5970", "Your total points"),
            statsTileWidget("assets/images/icons/checkedList.png", "15",
                "Classes you've attended"),
            statsTileWidget("assets/images/icons/taskList.png", "26",
                "Courses you've signed up for"),
            statsTileWidget(
                "assets/images/icons/Like.png", "5", "Favorited projects"),
            statsTileWidget("assets/images/icons/labIcon.png", "0",
                "Projects you've submitted"),
            statsTileWidget(
                "assets/images/icons/Workshhop.png", "2", "Courses presented"),
          ],
        ),
      ),
    );
  }
}
