import 'package:flutter/material.dart';
import 'package:iscapp/models/colorsClass.dart';
import 'package:iscapp/views/screens/coursesScreen.dart';
import 'package:iscapp/views/screens/homeScreen.dart';
import 'package:iscapp/views/screens/profileScreen.dart';
import 'package:iscapp/views/screens/studentProjectsScreen.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    homeScreen(),
    studentProjectsScreen(),
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
                  AssetImage("assets/images/icons/labicon.png"),
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
