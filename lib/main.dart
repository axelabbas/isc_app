import 'package:flutter/material.dart';
import 'package:iscapp/views/screens/bottomNavBar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: bottomNav(),
    theme: ThemeData(fontFamily: "Poppins"),
    debugShowCheckedModeBanner: false,
  ));
}
