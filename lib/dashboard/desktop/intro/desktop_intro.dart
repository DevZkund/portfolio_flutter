import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // #..1.1
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const RotatedBox(
                    quarterTurns: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Follow me",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3.0,
                    height: 42.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(top: 0),
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage("images/linkedin.png"),
                      color: Colors.white,
                      size: 13,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage("images/gmail.png"),
                      color: Colors.white,
                      size: 13,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage("images/github.png"),
                      color: Colors.white,
                      size: 13,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage("images/instagram.png"),
                      color: Colors.white,
                      size: 13,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        // #..1.2
        Padding(
          padding: const EdgeInsets.only(left: 120, top: 150),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Personal Portfolio",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // const SizedBox(
                    //   width: 40,
                    // ),
                    const Text(
                      "Flutter ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GradientText(
                      'Developer',
                      style: const TextStyle(
                        fontSize: 30,
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
                const Text(
                  '''Innovative, task driven, results oriented professional website designer & developer adapting \nlatest technology.Proficient in developing databases, creating user interfaces, writing and \ntesting codestroubleshooting simple/complex issues, and implementing new features based \non user feedback.''',
                  style: TextStyle(
                    color: Colors.white38,
                  ),
                ),
              ],
            ),
          ),
        ),
        // #..1.3
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 30),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.12,
            height: 220,
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
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 2)),
          ),
        ),
      ],
    );
  }
}
