import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/mobile/appbar/mobile_appbar.dart';
import 'package:portfolio/dashboard/mobile/drawer/drawer_mobile.dart';
import 'package:portfolio/dashboard/mobile/education/edu_info.dart';
import 'package:portfolio/dashboard/mobile/intro/mobile_intro.dart';
import 'package:portfolio/dashboard/mobile/project/mobile_project_grid.dart';

class MobileDesign extends StatefulWidget {
  const MobileDesign({Key? key}) : super(key: key);

  @override
  State<MobileDesign> createState() => _MobileDesignState();
}

int _currentIndex = 0;

class _MobileDesignState extends State<MobileDesign> {
  @override
  Widget build(BuildContext context) {
    // -----

    final List<Widget> screens = [
      const IntroMobile(),
      const EduInfoMobile(),
      const ProjectGridMobile(),
    ];

    // ***-------
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 5, 21),
      endDrawer: const DrawerPage(),
      appBar: const AppBarMobile(),
      body: screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 5, 21),
        index: 0,
        height: 50.0,
        items: const <Widget>[
          Icon(
            Icons.arrow_circle_right,
            size: 30,
            color: Color.fromARGB(255, 0, 5, 21),
          ),
          Icon(
            Icons.school,
            size: 30,
            color: Color.fromARGB(255, 0, 5, 21),
          ),
          Icon(
            Icons.laptop,
            size: 30,
            color: Color.fromARGB(255, 0, 5, 21),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
