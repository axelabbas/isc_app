import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/CourseClass.dart';
import 'package:iscapp/views/screens/courses/courseDetails.dart';

courseWidget(context, Course course) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => courseDetailsScreen(currentCourse: course,)));
    },
    child: Container(
      height: 95.h,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100.h,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.bold)),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "${course.lessonsCount} lessons",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                ),
                Row(
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "${course.startDate}-${course.completeDate}",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "${course.time}",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 2, top: 2, bottom: 2),
            height: 100.h, //> 100 ? 100 : imgSize,
            width: 100.w, //> 100 ? 100 : imgSize,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/spaceman.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100)),
          ),
        ],
      ),
    ),
  );
}
