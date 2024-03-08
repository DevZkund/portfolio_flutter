import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/desktop/certificate/desktop_education_grid.dart';

class EducationDesktop extends StatelessWidget {
  const EducationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 5, 21),
      padding: const EdgeInsets.only(top: 100),
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Skills",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
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
                      [
                        "NODE",
                        "FLUTTER",
                        "ANDROID",
                        "FIREBASE",
                        "SQL",
                        "ORACLE"
                      ]
                    ])
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var skill in skillRow)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage("images/$skill.png"),
                                    height: 50,
                                    width: 50,
                                  ),
                                  Text(
                                    skill.toUpperCase(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              children: [
                const Text(
                  "Education",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                const EducationGridDesktop()
              ],
            ),
          )
        ],
      ),
    );
  }
}
