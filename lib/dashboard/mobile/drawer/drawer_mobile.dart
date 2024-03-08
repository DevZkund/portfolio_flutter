import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:portfolio/dashboard/mobile/drawer/about.dart';
import 'package:portfolio/dashboard/mobile/drawer/personal_info.dart';
import 'package:portfolio/res/colors.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    var high = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: high,
        width: width * 0.7,
        decoration: BoxDecoration(
          color: MyColors.pBG,
          border: Border.all(color: MyColors.pBorder),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: EdgeInsets.only(left: high * 0.04),
                height: 200,
                width: 200,
                padding: const EdgeInsets.fromLTRB(107, 45, 3, 65),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pose.png"))),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: MyColors.pBorder),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: ClipOval(
                    child: Image.asset(
                      "assets/images/pic.png",
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: high * 0.03,
              ),
              const Text(
                "Welcome to devzkund....",
                style: TextStyle(
                    color: MyColors.pText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: width,
                height: 0.3,
                color: Colors.white38,
              ),
              SizedBox(
                height: high * 0.02,
              ),
              //-------------details-------------//
              const PersonalInfo(),
              SizedBox(
                height: high * 0.1,
              ),

              const About(),
            ],
          ),
        ));
  }
}
