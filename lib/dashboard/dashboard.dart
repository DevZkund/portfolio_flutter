import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/mobile/mobile_design.dart';
import 'package:portfolio/dashboard/tablet/appbar/tab_appbar.dart';
import 'package:portfolio/dashboard/tablet/certificate/tab_certificate_grid.dart';
import 'package:portfolio/dashboard/tablet/contact/tab_contact_me.dart';
import 'package:portfolio/dashboard/tablet/education/tab_education.dart';
import 'package:portfolio/dashboard/tablet/intro/tab_intro.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/responsive/responsive_helper.dart';
import 'package:portfolio/dashboard/desktop/certificate/desktop_certificate_grid.dart';
import 'package:portfolio/dashboard/desktop/contact/desktop_contact_me.dart';
import 'package:portfolio/dashboard/desktop/intro/desktop_intro.dart';
import 'package:portfolio/dashboard/desktop/education/desktop_education.dart';
import 'package:portfolio/dashboard/desktop/project/desktop_project_grid.dart';
import 'package:portfolio/dashboard/desktop/appbar/desktop_appbar.dart';
import 'package:portfolio/dashboard/tablet/project/tab_project_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ResponsiveHelper(
        // Mobile
        mobile: MobileDesign(),
        // Tablets
        tablet: Scaffold(
          backgroundColor: MyColors.pBG,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBarTab(),
                IntroTab(),
                EducationTab(),
                CertificateGridTab(),
                ProjectGridTab(),
                ContactMeTab(),
              ],
            ),
          ),
        ),
        // Desktop
        desktop: Scaffold(
          backgroundColor: MyColors.pBG,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBarDesktop(),
                IntroDesktop(),
                EducationDesktop(),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Certificate & License",
                    style: TextStyle(
                      color: MyColors.pText,
                      fontSize: 45,
                    ),
                  ),
                ),
                CertificateGridDesktop(),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Projects",
                    style: TextStyle(
                      color: MyColors.pText,
                      fontSize: 45,
                    ),
                  ),
                ),
                ProjectGridDesktop(),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Contact me",
                    style: TextStyle(
                      color: MyColors.pText,
                      fontSize: 45,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ContactMeDesktop()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
