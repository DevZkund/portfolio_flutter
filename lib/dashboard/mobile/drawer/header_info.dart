import 'package:flutter/material.dart';
import 'package:portfolio/res/colors.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: MyColors.sText),
          ),
          Text(
            text,
            style: const TextStyle(color: MyColors.sText),
          ),
        ],
      ),
    );
  }
}
