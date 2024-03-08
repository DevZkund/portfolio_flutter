import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/mobile/intro/mobile_skill.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: screenWidth * 0.8,
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GradientText(
                    "Follow me ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                    ),
                    colors: const [
                      Colors.blue,
                      Colors.red,
                      Colors.teal,
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screenWidth * 0.01, top: screenWidth * 0.01),
                    width: screenWidth * 0.05,
                    height: 1,
                    color: Colors.white,
                  ),
                  buildIconButton(
                      "assets/images/linkedin.png", screenWidth * 0.035),
                  buildIconButton(
                      "assets/images/gmail.png", screenWidth * 0.035),
                  buildIconButton(
                      "assets/images/github.png", screenWidth * 0.045),
                  buildIconButton(
                      "assets/images/instagram.png", screenWidth * 0.035),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Personal \nPortfolio",
                        style: TextStyle(
                          fontSize: screenWidth * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Flutter ",
                            style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          GradientText(
                            'Developer...',
                            style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                            colors: const [
                              Colors.blue,
                              Colors.red,
                              Colors.teal,
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.2,
                    height: screenWidth * 0.25,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/pic.png"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0XFF900ee5),
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          spreadRadius: 5,
                        )
                      ],
                      borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      border: Border.all(
                        color: Colors.white,
                        width: screenWidth * 0.005,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                '''Innovative, task-driven, results-oriented professional website designer & developer adapting latest technology. Proficient in developing databases, creating user interfaces, writing and testing code, troubleshooting simple complex issues, and implementing new features based on user feedback.''',
                style: TextStyle(
                  fontSize: screenWidth * 0.032,
                  color: Colors.white54,
                ),
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              ),
              // -------Skill Section ---------------------//
              const SkillMobile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIconButton(String imagePath, double size) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: IconButton(
        onPressed: () {},
        icon: ImageIcon(
          AssetImage(imagePath),
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
