import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/screens/coursesScreen.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/courseDetailsWidget.dart';

class courseDetailsScreen extends StatefulWidget {
  const courseDetailsScreen({super.key});

  @override
  State<courseDetailsScreen> createState() => _courseDetailsScreenState();
}

class _courseDetailsScreenState extends State<courseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBarWidget("Course Details"),
              SizedBox(
                height: 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/spaceman.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Journey to space 5",
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style:
                        TextStyle(color: myColors.primaryColor, fontSize: 25),
                  ),
                  Icon(Icons.favorite_border_outlined,
                      color: myColors.primaryColor)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  courseDetailsWidget(
                      context,
                      Icon(
                        Icons.calendar_month,
                      ),
                      "15/9 - 17/10"),
                  courseDetailsWidget(
                      context, Icon(Icons.timelapse), "10:30 AM"),
                  courseDetailsWidget(
                      context, Icon(Icons.logout), "+500 Points"),
                  courseDetailsWidget(
                      context, Icon(Icons.checklist), "Requires Laptop"),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About this course",
                  style: TextStyle(color: myColors.primaryColor, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  "Voluptate ut cillum ipsum aliquip id. Labore do qui esse nisi enim exercitation officia consectetur occaecat esse quis commodo velit consectetur. Et incididunt occaecat reprehenderit adipisicing aliquip laborum duis cillum excepteur consequat. Labore dolore anim culpa reprehenderit laborum id irure. Ipsum veniam minim magna fugiat qui incididunt irure incididunt magna consectetur nostrud. Do fugiat incididunt quis aute dolore exercitation pariatur officia.")
            ],
          ),
        ),
      ),
    );
  }
}
