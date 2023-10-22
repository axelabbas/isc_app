import 'package:flutter/material.dart';
import 'package:iscapp/controllers/projectsProvider.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/screens/coursesScreens/coursesScreen.dart';
import 'package:iscapp/views/screens/homeScreens/homeScreen.dart';
import 'package:iscapp/views/screens/profileScreens/profileScreen.dart';
import 'package:iscapp/views/screens/projectScreens/studentProjectsScreen.dart';
import 'package:provider/provider.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    homeScreen(),
    ChangeNotifierProvider(
        create: (context) => ProjectsProvider(),
        child: studentProjectsScreen()),
    coursesScreen(),
    profileScreen(),
  ];
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                _pageController.jumpToPage(_pageIndex);
              }),
          items: [
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
