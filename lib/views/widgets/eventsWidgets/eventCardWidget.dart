import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/models/eventClass.dart';
import 'package:iscapp/views/screens/events/eventDetails.dart';

class eventCardWidget extends StatefulWidget {
  final Event event;
  const eventCardWidget({super.key, required this.event});

  @override
  State<eventCardWidget> createState() => _eventCardWidgetState();
}

class _eventCardWidgetState extends State<eventCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => eventDetailsScreen(
                        event: widget.event,
                      )));
        },
        child: Container(
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
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.event.title,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text("${widget.event.date} ${widget.event.time}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ]),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 75.h,
                width: 75.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/spaceman.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(70)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
