import 'package:flutter/material.dart';
import 'package:iscapp/views/screens/bottomNavBar.dart';
import 'views/screens/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: bottomNav(),
    theme: ThemeData(fontFamily: "Poppins"),
    debugShowCheckedModeBanner: false,
  ));
}
