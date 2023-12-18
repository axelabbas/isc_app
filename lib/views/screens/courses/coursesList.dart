import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/coursesProvider.dart';
import 'package:iscapp/controllers/labOptionsProvider.dart';
import 'package:iscapp/models/CourseClass.dart';
import 'package:iscapp/views/screens/courses/newCourse.dart';
import 'package:iscapp/views/widgets/generalWidgets/mainButton.dart';
import 'package:iscapp/views/widgets/workshopsWidgets.dart/courseWidget.dart';
import 'package:provider/provider.dart';

class coursesScreen extends StatefulWidget {
  const coursesScreen({super.key});

  @override
  State<coursesScreen> createState() => _coursesScreenState();
}

class _coursesScreenState extends State<coursesScreen>
    with AutomaticKeepAliveClientMixin<coursesScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    context.read<CoursesProvider>().generateList();
    List<Course> coursesList =
        context.read<CoursesProvider>().getCourses;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 20),
        child: Column(
          children: [
            Text(
              "Do you have a talent you want to share with others?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            mainButtonWidget(
              text: "Submit a course",
              buttonClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ChangeNotifierProvider(
                            create: (context) => RadioButtonModel(),
                            child: NewCourseForm()))));
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: coursesList.length, // Replace with your actual item count
              itemBuilder: (context, index) {
                return courseWidget(
                    context, coursesList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
