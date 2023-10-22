import 'package:flutter/material.dart';
import 'package:iscapp/models/studentProject.dart';

class ProjectsProvider extends ChangeNotifier {
  List<StudentProject> _projects = [];
  // List<StudentProject> _favoriteProjects = [];

  List<StudentProject> get projects => _projects;

  set projects(List<StudentProject> value) {
    _projects = value;
    notifyListeners();
  }

  addProject(StudentProject project) {
    _projects.add(project);
    notifyListeners();
  }

  removeProject(StudentProject project) {
    _projects.remove(project);
    notifyListeners();
  }

  //test function.
  generateList() {
    for (int i = 0; i < 10; i++) {
      _projects.add(StudentProject(
          title: "Project $i",
          bio:
              "Sunt voluptate officia ut officia sunt magna non est nostrud commodo. Mollit sint veniam laborum do enim. Reprehenderit reprehenderit tempor tempor ex ea elit incididunt deserunt. Sit nulla magna sunt minim duis deserunt occaecat consectetur. Minim et proident ex eiusmod deserunt. Elit eu eiusmod dolor nisi est amet. Et sint in et consequat voluptate enim aute id cupidatat.",
          images: [
            "assets/images/TESTIMAGE.png",
            "assets/images/TESTIMAGE.png",
            "assets/images/TESTIMAGE.png", 
          ],
          teamMembers: ["member1", "member2"],
          isAssisted: false,
          dateCompleted: DateTime.now(),
          platform: "Android"));
    }
  }
}
