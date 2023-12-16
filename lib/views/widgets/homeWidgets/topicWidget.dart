import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:iscapp/models/colorsClass.dart";

topicWidget(image, title) {
  return Container(
    height: 150.h,
    width: 130.w,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 4),
              color: Colors.black.withOpacity(0.25))
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Center(
            child: ImageIcon(
              AssetImage(image),
              color: myColors.primaryColor,
              size: 50.sp,
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(title,
            style: TextStyle(
                color: myColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 22.sp)),
      ],
    ),
  );
}
