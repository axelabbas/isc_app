import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/models/eventClass.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/courseDetailsWidget.dart';

class eventDetailsScreen extends StatefulWidget {
  final Event event;
  eventDetailsScreen({super.key, required this.event});

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
              SizedBox(
                height: 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.event.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.event.title,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style:
                        TextStyle(color: myColors.primaryColor, fontSize: 25),
                  ),
                  Icon(Icons.favorite_border_outlined,
                      color: myColors.primaryColor)
                ],
              ),
              SizedBox(
                height: 25,
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
                      widget.event.points.toString() + "+ Points"),
                  courseDetailsWidget(
                      context, Icon(Icons.location_pin), widget.event.location),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About this event",
                  style: TextStyle(color: myColors.primaryColor, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  "Voluptate ut cillum ipsum aliquip id. Labore do qui esse nisi enim exercitation officia consectetur occaecat esse quis commodo velit consectetur. Et incididunt occaecat reprehenderit adipisicing aliquip laborum duis cillum excepteur consequat. Labore dolore anim culpa reprehenderit laborum id irure. Ipsum veniam minim magna fugiat qui incididunt irure incididunt magna consectetur nostrud. Do fugiat incididunt quis aute dolore exercitation pariatur officia."),
              SizedBox(height: 30),
              Container(
                height: 50,
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
