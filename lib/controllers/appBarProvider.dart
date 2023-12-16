import 'package:flutter/material.dart';

class AppBarProvider extends ChangeNotifier {
  String title = "Home";
  Map titles = {
    0: "Home",
    1: "Projects",
    2: "Courses",
    3: "Lab",
    4: "Profile",
  };

  void changeTitle(int index) {
    title = titles[index];
    notifyListeners();
  }
  
}
