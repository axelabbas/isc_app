import 'package:flutter/material.dart';
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
                SizedBox(
                  height: 40,
                ),
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
                  child: Text("Project Type"),
                  alignment: Alignment.centerLeft,
                ),
                typesListWidget(
                    types: ProjectTypes,
                    selectedValueIndex: selectedValueIndex),
                SizedBox(
                  height: 20,
                ),
                buttonHintWidget(
                    title: "Project photos",
                    imgPath: "assets/images/icons/attachImage.png"),
                SizedBox(
                  height: 50,
                ),
                mainButtonWidget(text: "Submit", onTap: () {})
              ],
            ),
          ),
        ));
  }
}
