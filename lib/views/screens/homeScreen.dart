import 'package:flutter/material.dart';

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
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              Positioned(
                top: -50,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Container(
                    height: 135,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Image.asset(
                      "assets/images/spaceman.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(20)),
                  child: Container(
                    height: 42,
                    width: 84,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Positioned(bottom: 10, child: Text("TESt 1231231312 aseqweqw")),
              Text("TESt 1231231312 aseqweqw"),
              Text("TESt 1231231312 aseqweqw"),
            ],
          )
        ],
      ),
    );
  }
}
