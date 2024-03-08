import 'package:flutter/material.dart';
class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMobile({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 5, 21),

      // --------------Action--------------
      actions: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'assets/images/profile.png',
                width: 30,
                height: 30,
                color: Colors.green,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ],
      // ---------X------------
      leadingWidth: 80,
      leading: Image.asset(
        "assets/images/logo.gif",
      ),
      centerTitle: true,
      title: const Text(
        "Portfolio",
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
          letterSpacing: 2.0,
        ),
      ),
    );
  }
}
