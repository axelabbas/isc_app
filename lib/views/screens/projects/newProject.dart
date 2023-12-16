import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
import 'package:iscapp/views/widgets/labWidgets/formFieldWidget.dart';
import 'package:iscapp/views/widgets/labWidgets/listOfTypes.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/hintButtonWidget.dart';
import 'package:provider/provider.dart';

class NewProjectForm extends StatefulWidget {
  const NewProjectForm({super.key});

  @override
  State<NewProjectForm> createState() => NewProjectFormState();
}

class NewProjectFormState extends State<NewProjectForm> {
  Map ProjectTypes = {0: "Graduation", 1: "Commercial", 2: "Personal"};
  @override
  Widget build(BuildContext context) {
    int selectedValueIndex = context.watch<RadioButtonModel>().selectedValue;
    return Scaffold(
        appBar: customAppBar(context, "New Project"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                formFieldWidget(
                  label: 'Project Name',
                  hint: 'Project name',
                ),
                formFieldWidget(
                  label: 'Project Lead',
                  hint: 'Project Lead',
                ),
                formFieldWidget(
                  label: 'Additional team members',
                  hint: 'Additional team members',
                ),
                formFieldWidget(
                  label: 'Phone Number',
                  hint: 'Phone Number',
                ),
                formFieldWidget(
                  isMultiline: true,
                  label: 'Project Description',
                  hint: 'Project Description',
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Project Type"),
                ),
                SizedBox(
                  height: 10.h,
                ),
                typesListWidget(
                    types: ProjectTypes,
                    selectedValueIndex: selectedValueIndex),
                SizedBox(
                  height: 20.h,
                ),
                buttonHintWidget(
                    title: "Project photos",
                    imgPath: "assets/images/icons/attachImage.png"),
                SizedBox(
                  height: 30.h,
                ),
                mainButtonWidget(text: "Submit", buttonClick: () {})
              ],
            ),
          ),
        ));
  }
}
