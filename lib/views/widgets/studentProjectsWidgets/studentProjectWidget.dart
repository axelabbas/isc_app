import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/studentProject.dart';

import 'package:iscapp/views/screens/projects/projectDetails.dart';

studentProjectWidget(context, StudentProject project) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProjectDetailsScreen(
                    project: project,
                  )));
    },
    child: Container(
      height: MediaQuery.of(context).size.width * 0.2,
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
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold)),
                    Text(project.teamMembers.join(", "),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400)),
                  ]),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 2, top: 2, bottom: 2),
            height: MediaQuery.of(context).size.width * 0.17,
            width: MediaQuery.of(context).size.width * 0.17,
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
