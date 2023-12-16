import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/models/eventClass.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/courseDetailsWidget.dart';

class eventDetailsScreen extends StatefulWidget {
  final Event event;
  const eventDetailsScreen({super.key, required this.event});

  @override
  State<eventDetailsScreen> createState() => _eventDetailsScreenState();
}

class _eventDetailsScreenState extends State<eventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Event Details"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 235.h,
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.event.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.event.title,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style:
                        TextStyle(color: myColors.primaryColor, fontSize: 20.h),
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
                      widget.event.date.toString()),
                  courseDetailsWidget(
                      context, Icon(Icons.timelapse), widget.event.time),
                  courseDetailsWidget(context, Icon(Icons.logout),
                      "${widget.event.points}+ Points"),
                  courseDetailsWidget(
                      context, Icon(Icons.location_pin), widget.event.location),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About this event",
                  style:
                      TextStyle(color: myColors.primaryColor, fontSize: 16.h),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "With the current rapid changes in climate change taking a passive stance just isn't an option, so Globe aims to help people change their views on their part in the situation through providing them with real world rewards while also building a healthy community that will help our globe blossom again.",
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 25.h),
              SizedBox(
                height: 40.h,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black.withOpacity(1),
                      elevation: 5,
                      side: BorderSide(width: 1.0, color: Colors.white),
                      backgroundColor: myColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text("Attend"),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
