import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';

statsTileWidget(icon, title, subtitle) {
  return ListTile(
    leading: ImageIcon(
      AssetImage(icon),
      color: myColors.primaryColor,
      size: 30.sp,
    ),
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
    horizontalTitleGap: 1,
  );
}
