import 'package:flutter/material.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

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
                fontSize: screenWidth * 0.1,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: screenWidth * 0.06,
          ),
          for (var skillRow in [
            ["excel", "html", "css", "javascript", "java", "python"],
            ["react", "dart", "node", "sql", "flutter"],
            ["android", "firebase", "oracle"],
          ])
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var skill in skillRow)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenWidth * 0.02,
                      horizontal: screenWidth * 0.015,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/$skill.png",
                          height: screenWidth * 0.075,
                          width: screenWidth * 0.075,
                        ),
                        Text(
                          skill.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.027,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
