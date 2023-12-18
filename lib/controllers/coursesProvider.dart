import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iscapp/models/CourseClass.dart';

class CoursesProvider extends ChangeNotifier {
  List<Course> _courses = [];

  get getCourses => _courses;
  set setCourses(List<Course> value) {
    _courses = value;
    notifyListeners();
  }

  addCourse(Course course) {
    _courses.add(course);
    notifyListeners();
  }

  removeCourse(Course course) {
    _courses.remove(course);
    notifyListeners();
  }

  //test function.
  generateList() {
    for (int i = 0; i < 10; i++) {
      _courses.add(Course(
        title: "Course $i",
        bio:
            "This is the bio for course $i Cillum ad fugiat sint commodo sint id tempor eiusmod qui nostrud adipisicing ex sunt. Incididunt nostrud ad do deserunt. Tempor pariatur incididunt fugiat cillum labore. Sunt id ad enim ex mollit. Sunt quis nisi consequat duis ad culpa nisi. Sunt cillum ea veniam enim veniam. Nostrud eiusmod amet aute nostrud.",
        image: "assets/images/spaceman.jpg",
        lessonsCount:
            5 + Random().nextInt(10 - 5), //random int between 10 and 5
        startDate: DateFormat('dd/MM').format(DateTime.now()),
        completeDate:
            DateFormat('dd/MM').format(DateTime.now().add(Duration(days: 7))),
        time: DateFormat('hh:mm a').format(DateTime.now()),
        points: 500,
        requiresLaptop: false,
      ));
    }
  }
}
