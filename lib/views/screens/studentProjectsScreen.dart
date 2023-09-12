import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/studentProjectsWidgets/studentProjectWidget.dart';

class studentProjectsScreen extends StatefulWidget {
  const studentProjectsScreen({super.key});

  @override
  State<studentProjectsScreen> createState() => _studentProjectsScreenState();
}

class AdaptiveTextSize {
  const AdaptiveTextSize();

  getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
    return (value / 720) * MediaQuery.of(context).size.width;
  }
}

class _studentProjectsScreenState extends State<studentProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: Column(
          children: [
            appBarWidget("Student Projects"),
            SizedBox(
              height: 50,
            ),
            Text(
              "You have a super cool project you want to showcase here?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 30),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 20),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black.withOpacity(0.5),
                    elevation: 5,
                    side: BorderSide(width: 1.0, color: Colors.white),
                    backgroundColor: myColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text("Submit a Project"),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5, // Replace with your actual item count
              itemBuilder: (context, index) {
                return studentProjectWidget(context,
                    "Fully functioning robot arm", "Ali Jasem, Suzan Abbas");
              },
            ),
            Text("test")
          ],
        ),
      ),
    );
  }
}
