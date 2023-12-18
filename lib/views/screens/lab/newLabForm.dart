import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
import 'package:iscapp/views/widgets/labWidgets/formFieldWidget.dart';
import 'package:iscapp/views/widgets/labWidgets/listOfTypes.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/hintButtonWidget.dart';
import 'package:provider/provider.dart';

class NewLabForm extends StatefulWidget {
  const NewLabForm({super.key});

  @override
  State<NewLabForm> createState() => NewLabFormState();
}

class NewLabFormState extends State<NewLabForm> {
  Map projectTypes = {
    0: "Graduation",
    1: "Commerical",
    2: "Personal",
  };
  @override
  Widget build(BuildContext context) {
    int selectedValueIndex = context.watch<RadioButtonModel>().selectedValue;
    return Scaffold(
        appBar: customAppBar(context, "Lab Request"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              children: [
                formFieldWidget(
                  label: 'Project Name',
                  hint: 'Project name',
                ),
                formFieldWidget(
                  label: 'Project Team',
                  hint: 'Project Team',
                ),
                formFieldWidget(
                  label: 'Phone',
                  hint: 'Phone Number',
                ),
                formFieldWidget(
                  isMultiline: true,
                  label: 'About',
                  hint: 'What is the project about?',
                ),
                formFieldWidget(
                  isMultiline: true,
                  label: 'Help Needed',
                  hint: 'What help do you need?',
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Project Type"),
                ),
                SizedBox(
                  height: 5.h,
                ),
                typesListWidget(
                    types: projectTypes,
                    selectedValueIndex: selectedValueIndex),
                SizedBox(
                  height: 15.h,
                ),
                buttonHintWidget(
                    title: "Project Photos",
                    imgPath: "assets/images/icons/attachImage.png"),
                SizedBox(
                  height: 25.h,
                ),
                mainButtonWidget(
                  text: "Submit",
                  buttonClick: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
