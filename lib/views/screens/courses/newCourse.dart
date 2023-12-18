import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
import 'package:iscapp/views/widgets/labWidgets/formFieldWidget.dart';
import 'package:iscapp/views/widgets/labWidgets/listOfTypes.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/hintButtonWidget.dart';
import 'package:provider/provider.dart';

class NewCourseForm extends StatefulWidget {
  const NewCourseForm({super.key});

  @override
  State<NewCourseForm> createState() => NewCourseFormState();
}

class NewCourseFormState extends State<NewCourseForm> {
  Map CourseTypes = {
    0: "Online",
    1: "In-Person",
  };
  @override
  Widget build(BuildContext context) {
    int selectedValueIndex = context.watch<RadioButtonModel>().selectedValue;
    return Scaffold(
        appBar: customAppBar(context, "New Course"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              children: [
                formFieldWidget(
                  label: 'Course Name',
                  hint: 'Course name',
                ),
                formFieldWidget(
                  label: 'Instrcutor Name',
                  hint: 'Instrcutor Name',
                ),
                formFieldWidget(
                  label: 'Instrcutor occupation',
                  hint: 'Instrcutor occupation',
                ),
                formFieldWidget(
                  label: 'Phone Number',
                  hint: 'Phone Number',
                ),
                formFieldWidget(
                  isMultiline: true,
                  label: 'Course Details',
                  hint: 'Course Details',
                ),
                formFieldWidget(
                  label: 'Course Requirements',
                  hint: 'Course Requiremnets',
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Course Type"),
                ),
                SizedBox(
                  height: 5.h,
                ),
                typesListWidget(
                    types: CourseTypes, selectedValueIndex: selectedValueIndex),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    buttonHintWidget(
                        title: "Course material",
                        imgPath: "assets/images/icons/attachImage.png"),
                    buttonHintWidget(
                        title: "Instructor photo",
                        imgPath: "assets/images/icons/attachImage.png"),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                mainButtonWidget(text: "Submit", buttonClick: () {}),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ));
  }
}
