import 'package:flutter/material.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/screens/courses/coursesList.dart';
import 'package:iscapp/views/screens/lab/newLabForm.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:provider/provider.dart';

class LabScreen extends StatefulWidget {
  const LabScreen({super.key});

  @override
  State<LabScreen> createState() => _LabScreenState();
}

class _LabScreenState extends State<LabScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "You have an epic idea or a crazy awesome project but you're not sure you can do it alone?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 25),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 20),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.75,
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ChangeNotifierProvider(
                                create: (context) => RadioButtonModel(),
                                child: NewLabForm()))));
                  },
                  child: Center(
                    child: Text("Pitch us in"),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Image.asset("assets/images/walle/wallehi.png")
          ],
        ),
      ),
    );
  }
}