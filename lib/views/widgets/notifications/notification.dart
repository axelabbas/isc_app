import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';

class NotificationWidget extends StatelessWidget {
  final String actorName;

  final String action;

  final String subjectImage;

  final String actorImg;

  const NotificationWidget(
      {super.key,
      required this.actorName,
      required this.action,
      required this.subjectImage,
      required this.actorImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 21,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(actorImg),
          ),
        ),
        title: Text(actorName),
        subtitle: Text(action),
        trailing: ImageIcon(
          AssetImage(subjectImage),
          color: myColors.primaryColor,
        ),
      ),
    );
  }
}
