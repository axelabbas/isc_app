import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget courseDetailsWidget(context, icon, title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    height: 80.h,
    width: 75.w,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
        border: Border.all(
          color: Colors.black.withOpacity(0.25),
          width: 1,
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        icon,
        Text(
          title,
          maxLines: 2,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
