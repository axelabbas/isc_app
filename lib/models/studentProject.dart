class StudentProject {
  late String title;
  late String bio;
  late List<String> images;
  late List<String> teamMembers;
  late bool isAssisted;
  late DateTime dateCompleted;
  late String platform;

  StudentProject(
      {required this.title,
      required this.bio,
      required this.images,
      required this.teamMembers,
      required this.isAssisted,
      required this.dateCompleted,
      required this.platform});
}
