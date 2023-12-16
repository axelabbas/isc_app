import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iscapp/controllers/appBarProvider.dart';
import 'package:iscapp/views/screens/bottomNavBar.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ChangeNotifierProvider(
              create: (context) => AppBarProvider(),
              child: bottomNav()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset("assets/images/logo-off.png"),
    ));
  }
}
