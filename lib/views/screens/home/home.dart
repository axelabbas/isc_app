import 'package:flutter/material.dart';
import 'package:iscapp/controllers/eventsProvider.dart';
import 'package:iscapp/models/eventClass.dart';
import 'package:iscapp/views/screens/events/eventsList.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/topicGridWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/topicWidget.dart';
import 'package:iscapp/views/widgets/homeWidgets/mainEventWidget.dart';
import "package:iscapp/models/colorsClass.dart";
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
    with AutomaticKeepAliveClientMixin<homeScreen> {
  @override
  bool get wantKeepAlive => true;
  @override
  @override
  Widget build(BuildContext context) {
    super.build(context);
    context.read<EventsProvider>().generateList();
    Event mainEvent = context.read<EventsProvider>().mainEvent;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: Column(
          children: [
            appBarWidget(context, "Welcome, USERNAME"),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EventListScreen()));
              },
              child: mainEventWidget(mainEvent.title, mainEvent.date.toString(),
                  mainEvent.time, mainEvent.image, context),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Topics",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(color: myColors.primaryColor, offset: Offset(0, -10))
                  ],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: myColors.primaryColor,
                  decorationThickness: 4,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            topicGridWidget(
              [
                topicWidget("assets/images/icons/labIcon.png", "Projects"),
                topicWidget("assets/images/icons/Workshhop.png", "Courses"),
                topicWidget("assets/images/icons/workshopidea.png", "Lab"),
                topicWidget("assets/images/icons/calender.png", "Events"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
