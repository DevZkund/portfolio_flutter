import 'package:flutter/material.dart';
import 'package:portfolio/res/colors.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: MyColors.pBG,
        child: Column(
          children: [
            const Spacer(
              flex: 6,
            ),
            const Spacer(),
            Text(
              'Kundan kumar',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: MyColors.sText),
            ),
            const SizedBox(
              height: 20 / 4,
            ),
            const Text(
              'Flutter Developer & The Student of\nSoftware Engineering',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  color: MyColors.sText),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
