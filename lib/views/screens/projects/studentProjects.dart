import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/controllers/projectsProvider.dart';
import 'package:iscapp/models/studentProject.dart';
import 'package:iscapp/views/screens/projects/newProject.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
import 'package:iscapp/views/widgets/studentProjectsWidgets/studentProjectWidget.dart';
import 'package:provider/provider.dart';

class studentProjectsScreen extends StatefulWidget {
  const studentProjectsScreen({super.key});

  @override
  State<studentProjectsScreen> createState() => _studentProjectsScreenState();
}

class _studentProjectsScreenState extends State<studentProjectsScreen>
    with AutomaticKeepAliveClientMixin<studentProjectsScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    context.read<ProjectsProvider>().generateList();
    List<StudentProject> projectList =
        context.watch<ProjectsProvider>().projects;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: Column(
          children: [
            Text(
              "You have a super cool project you want to showcase here?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            mainButtonWidget(
              text: "Submit a project",
              buttonClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ChangeNotifierProvider(
                            create: (context) => RadioButtonModel(),
                            child: NewProjectForm()))));
              },
            ),
            SizedBox(
              height: 35.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  projectList.length, // Replace with your actual item count
              itemBuilder: (context, index) {
                return studentProjectWidget(context, projectList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
