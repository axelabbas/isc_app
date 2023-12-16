import 'package:flutter/material.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/notifications/notification.dart';

class NotficationsScreen extends StatelessWidget {
  const NotficationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Notifications"),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NotificationWidget(
              actorName: "Karrar Rasool",
              action: "Created a project",
              subjectImage: "assets/images/icons/labIcon.png",
              actorImg: "assets/images/spaceman.jpg",
            ),
            NotificationWidget(
              actorName: "GDSC",
              action: "New Course Abailable!",
              subjectImage: "assets/images/icons/Workshhop.png",
              actorImg: "assets/images/logo-on.png",
            ),
          ],
        ),
      ),
    );
  }
}
