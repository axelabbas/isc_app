import 'package:flutter/material.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/controllers/projectsProvider.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/models/studentProject.dart';
import 'package:iscapp/views/screens/projects/newProject.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/studentProjectsWidgets/studentProjectWidget.dart';
import 'package:provider/provider.dart';

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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ChangeNotifierProvider(
                                create: (context) => RadioButtonModel(),
                                child: NewProjectForm()))));
                  },
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
