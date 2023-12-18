import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';

import 'package:iscapp/views/screens/lab/newLabForm.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
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
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "You have an epic idea or a crazy awesome project but you're not sure you can do it alone?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            mainButtonWidget(
              text: "Pitch us in!",
              buttonClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ChangeNotifierProvider(
                            create: (context) => RadioButtonModel(),
                            child: NewLabForm()))));
              },
            ),
            SizedBox(
              height: 80.h,
            ),
            Image.asset(
              "assets/images/walle/wallehi.png",
              scale: 1.2,
            )
          ],
        ),
      ),
    );
  }
}
