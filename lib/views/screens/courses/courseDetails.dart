import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/CourseClass.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/courseDetailsWidget.dart';

class courseDetailsScreen extends StatelessWidget {
  final Course currentCourse;
  const courseDetailsScreen({super.key, required this.currentCourse});

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
                    image: AssetImage(currentCourse.image),
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
                    currentCourse.title,
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
                      "${currentCourse.startDate} - ${currentCourse.completeDate}"),
                  courseDetailsWidget(
                      context, Icon(Icons.timelapse), currentCourse.time),
                  courseDetailsWidget(context, Icon(Icons.logout),
                      "+${currentCourse.points} Points"),
                  courseDetailsWidget(
                      context,
                      Icon(Icons.checklist),
                      currentCourse.requiresLaptop
                          ? "Laptop Required"
                          : "Laptop Not Required"),
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
                currentCourse.bio,
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
