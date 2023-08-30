import 'package:flutter/material.dart';
import 'views/screens/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: homeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
