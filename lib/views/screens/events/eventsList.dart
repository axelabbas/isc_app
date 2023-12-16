import 'package:flutter/material.dart';
import 'package:iscapp/controllers/eventsProvider.dart';
import 'package:iscapp/models/eventClass.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/eventsWidgets/eventCardWidget.dart';
import 'package:provider/provider.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({super.key});

  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  @override
  Widget build(BuildContext context) {
    List<Event> Events = context.read<EventsProvider>().events;

    return Scaffold(
      appBar: customAppBar(context, "Events"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Events.length, // Replace with your actual item count
              itemBuilder: (context, index) {
                return eventCardWidget(
                  event: Events[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
