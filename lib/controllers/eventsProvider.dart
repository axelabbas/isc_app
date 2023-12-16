import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iscapp/models/eventClass.dart';

class EventsProvider extends ChangeNotifier {
  List<Event> _events = [];
  late Event mainEvent;
  // List<Event> _favEvents = [];

  List<Event> get events => _events;

  set events(List<Event> value) {
    _events = value;
    notifyListeners();
  }

  addEvent(Event event) {
    _events.add(event);
    notifyListeners();
  }

  removeEvent(Event event) {
    _events.remove(event);
    notifyListeners();
  }

  //generate List for testing
  generateList() {
    for (int i = 0; i < 9; i++) {
      _events.add(Event(
        title: "Event $i",
        points: 100,
        time: DateFormat('hh:mm a').format(DateTime.now()),
        bio:
            "Sunt voluptate officia ut officia sunt magna non est nostrud commodo. Mollit sint veniam laborum do enim. Reprehenderit reprehenderit tempor tempor ex ea elit incididunt deserunt. Sit nulla magna sunt minim duis deserunt occaecat consectetur. Minim et proident ex eiusmod deserunt. Elit eu eiusmod dolor nisi est amet. Et sint in et consequat voluptate enim aute id cupidatat.",
        image: "assets/images/spaceman.jpg",
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        location: "location $i",
      ));
    }
    mainEvent = _events[0];
  }
}
