import 'package:flutter/material.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/eventsWidgets/eventCardWidget.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({super.key});

  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Events"),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5, // Replace with your actual item count
            itemBuilder: (context, index) {
              return eventCardWidget();
            },
          ),
        ],
      ),
    );
  }
}
