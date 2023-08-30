import 'package:flutter/material.dart';
import 'package:iscapp/views/widgets/mainEventWidget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Icon(Icons.menu),
              ),
              Text(
                "Welcome, USERNAME",
                style: TextStyle(fontFamily: "Poppins"),
              ),
              Image.asset(
                "assets/images/logo-on.png",
                height: 50,
                width: 50,
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          mainEventWidget("Test", "TEst", "test:test")
        ],
      ),
    );
  }
}
