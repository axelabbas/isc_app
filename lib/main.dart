import 'package:flutter/material.dart';
import 'views/screens/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: homeScreen(),
    theme: ThemeData(fontFamily: "Poppins"),
    debugShowCheckedModeBanner: false,
  ));
}
