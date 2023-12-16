import 'package:flutter/material.dart';
import 'package:iscapp/views/screens/courses/courseDetails.dart';
import 'package:iscapp/views/screens/courses/coursesList.dart';

courseWidget(context, title, lessonCount, startDay, endDay, time) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => courseDetailsScreen()));
    },
    child: Container(
      height: MediaQuery.of(context).size.width * 0.18,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize:
                            AdaptiveTextSize().getadaptiveTextSize(context, 25),
                        fontWeight: FontWeight.bold)),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "$lessonCount lessons",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 20)),
                ),
                Row(
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "$startDay-$endDay",
                      style: TextStyle(
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 18)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "$time",
                      style: TextStyle(
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 18)),
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
            height: MediaQuery.of(context).size.width *
                0.17, //> 100 ? 100 : imgSize,
            width: MediaQuery.of(context).size.width *
                0.17, //> 100 ? 100 : imgSize,
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
