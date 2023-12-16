import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';

statsCardWidget(icon, count, title, context) {
  return Container(
    padding: EdgeInsets.all(8),
    width: 80.w,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: .25.w),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4),
              color: Colors.black.withOpacity(.25))
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon(
          AssetImage(
            icon,
          ),
          size: 30.sp,
          color: myColors.primaryColor,
        ),
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}
