import 'package:flutter/material.dart';

class RadioButtonModel extends ChangeNotifier {
  int selectedValue = 0;

  void setSelectedValue(int value) {
    selectedValue = value;
    notifyListeners();
  }
}