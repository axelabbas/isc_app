class Course {
  final String title;
  final String bio;
  final String image;
  final int lessonsCount;
  final String startDate;
  final String completeDate;
  final String time;
  final int points;
  final bool requiresLaptop;

  Course({
    required this.image,
    required this.lessonsCount,
    required this.startDate,
    required this.time,
    required this.points,
    required this.requiresLaptop,
    required this.title,
    required this.bio,
    required this.completeDate,
  });
}
