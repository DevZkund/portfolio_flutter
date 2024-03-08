import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class IntroTab extends StatelessWidget {
  const IntroTab({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        // #..1.1
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth *
                    0.1, // Adjust left margin based on screen width
                top: screenWidth *
                    0.05, // Adjust top margin based on screen width
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.01),
                      child: Text(
                        "Follow me",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.012, // Adjust font size
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth *
                        0.0015, // Adjust width based on screen width
                    height: screenWidth *
                        0.021, // Adjust height based on screen width
                    child: const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(top: 0),
                    onPressed: () {},
                    icon: ImageIcon(
                      const AssetImage("images/linkedin.png"),
                      color: Colors.white,
                      size: screenWidth * 0.013, // Adjust icon size
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      const AssetImage("images/gmail.png"),
                      color: Colors.white,
                      size: screenWidth * 0.013, // Adjust icon size
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: ImageIcon(
                      const AssetImage("images/github.png"),
                      color: Colors.white,
                      size: screenWidth * 0.013, // Adjust icon size
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: ImageIcon(
                      const AssetImage("images/instagram.png"),
                      color: Colors.white,
                      size: screenWidth * 0.013, // Adjust icon size
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        // #..1.2
        Padding(
          padding: EdgeInsets.only(
            left:
                screenWidth * 0.12, // Adjust left padding based on screen width
            top: screenWidth * 0.08, // Adjust top padding based on screen width
          ),
          child: SizedBox(
            width: screenWidth * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Personal Portfolio",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03, // Adjust font size
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter ",
                      style: TextStyle(
                        fontSize: screenWidth * 0.022, // Adjust font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GradientText(
                      'Developer',
                      style: TextStyle(
                        fontSize: screenWidth * 0.022, // Adjust font size
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
                Text(
                  '''Innovative, task-driven, results-oriented professional website designer & developer adapting latest technology. Proficient in developing databases, creating user interfaces, writing and testing code, troubleshooting simple complex issues, and implementing new features based on user feedback.''',
                  style: TextStyle(
                    fontSize: screenWidth * 0.012,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
        // #..1.3
        Padding(
          padding: EdgeInsets.only(
            top: screenWidth * 0.08, // Adjust top padding based on screen width
            left:
                screenWidth * 0.03, // Adjust left padding based on screen width
          ),
          child: Container(
            width: screenWidth *
                0.15, // Adjust container width based on screen width
            height: screenWidth *
                0.2, // Adjust container height based on screen width
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("images/pic.png"),
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
              borderRadius: BorderRadius.circular(screenWidth *
                  0.03), // Adjust border radius based on screen width
              border: Border.all(
                  color: Colors.white,
                  width: screenWidth *
                      0.005), // Adjust border width based on screen width
            ),
          ),
        ),
      ],
    );
  }
}
