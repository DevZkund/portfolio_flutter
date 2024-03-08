import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/tablet/education/tab_education_grid.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 0, 5, 21),
      padding: EdgeInsets.only(top: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Skills",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth < 600 ? 20 : 30,
            ),
          ),
          for (var skillRow in [
            [
              "Excel",
              "HTML",
              "CSS",
              "JAVASCRIPT",
              "JAVA",
              "PYTHON",
              "REACT",
              "DART"
            ],
            ["NODE", "FLUTTER", "ANDROID", "FIREBASE", "SQL", "ORACLE"]
          ])
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var skill in skillRow)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenWidth * 0.025,
                      horizontal: screenWidth * 0.015,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/$skill.png",
                          height: screenWidth * 0.05,
                          width: screenWidth * 0.05,
                        ),
                        Text(
                          skill.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.0135,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          // Education grid
          SizedBox(
            height: screenWidth * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                const Text(
                  "Education",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                const EducationGridTab(),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
