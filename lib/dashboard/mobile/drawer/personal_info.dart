import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/mobile/drawer/header_info.dart';
import 'package:portfolio/res/colors.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var high = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: high * 0.02,
        ),
        const Text(
          'Personal info.',
          style: TextStyle(color: MyColors.pText),
        ),
        SizedBox(
          height: high * 0.02,
        ),
        const AreaInfoText(title: 'Contact', text: '8083217599'),
        const AreaInfoText(title: 'Email', text: 'devzkund@gmail.com'),
        const AreaInfoText(title: 'LinkedIn', text: '@devzkund'),
        const AreaInfoText(title: 'Github', text: '@devzkund'),
        SizedBox(
          height: high * 0.02,
        ),
      ],
    );
  }
}
