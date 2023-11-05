import 'package:flutter/material.dart';
import 'package:iscapp/models/eventClass.dart';
import 'package:iscapp/views/screens/coursesScreens/coursesScreen.dart';
import 'package:iscapp/views/screens/eventScreens/eventDetailsScreen.dart';

class eventCardWidget extends StatefulWidget {
  final Event event;
  eventCardWidget({super.key, required this.event});

  @override
  State<eventCardWidget> createState() => _eventCardWidgetState();
}

class _eventCardWidgetState extends State<eventCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => eventDetailsScreen(
                      event: widget.event,
                    )));
      },
      child: Container(
        height: MediaQuery.of(context).size.width * 0.17,
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
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
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.event.title,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 25),
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text("${widget.event.date} ${widget.event.time}",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(context, 20),
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
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
}
