import 'package:flutter/material.dart';
import 'package:iscapp/models/studentProject.dart';

class ProjectsProvider extends ChangeNotifier {
  List<StudentProject> _projects = [];
  List<StudentProject> _favoriteProjects = [];

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
          bio: "This is the bio of projectt $i",
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
