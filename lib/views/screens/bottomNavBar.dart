import 'package:flutter/material.dart';
import 'package:iscapp/controllers/appBarProvider.dart';
import 'package:iscapp/controllers/projectsProvider.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/screens/courses/coursesList.dart';
import 'package:iscapp/views/screens/home/home.dart';
import 'package:iscapp/views/screens/lab/labHome.dart';
import 'package:iscapp/views/screens/profile/profileScreen.dart';
import 'package:iscapp/views/screens/projects/studentProjects.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:provider/provider.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _pageIndex = 0;
  final List<Widget> _pages = [
    homeScreen(),
    ChangeNotifierProvider(
        create: (context) => ProjectsProvider(),
        child: studentProjectsScreen()),
    coursesScreen(),
    LabScreen(),
    profileScreen(),
  ];
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    String appBarTitle = context.watch<AppBarProvider>().title;

    return Scaffold(
      appBar: appBarWidget(context, appBarTitle),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: myColors.primaryColor,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _pageIndex,
          onTap: (value) => setState(() {
                _pageIndex = value;
                context.read<AppBarProvider>().changeTitle(_pageIndex);
                _pageController.jumpToPage(_pageIndex);
              }),
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icons/homeIcon.png"),
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icons/Workshhop.png"),
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icons/labIcon.png"),
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icons/Points.png"),
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icons/Profile.png"),
                ),
                label: "HOME"),
          ]),
      body: Center(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: _pages,
        ),
      ),
    );
  }
}
