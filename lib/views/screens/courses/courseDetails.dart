import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
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
      appBar: customAppBar(context, "Course Details"),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.h,
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/spaceman.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "PLC programming",
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
                height: 15.h,
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
                height: 15.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About this course",
                  style:
                      TextStyle(color: myColors.primaryColor, fontSize: 25.sp),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "With the current rapid changes in climate change taking a passive stance just isn't an option, so Globe aims to help people change their views on their part in the situation through providing them with real world rewards while also building a healthy community that will help our globe blossom again.",
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 20.h),
              mainButtonWidget(text: "Attend", buttonClick: () {})
            ],
          ),
        ),
      ),
    );
  }
}
