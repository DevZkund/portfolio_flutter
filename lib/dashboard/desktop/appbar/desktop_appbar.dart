import 'package:flutter/material.dart';

class AppBarDesktop extends StatelessWidget {
  const AppBarDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 5, 21),
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 40,
          ),
          const Image(
            image: AssetImage("images/logo.gif"),
            height: 50,
            width: 100,
          ),
          const SizedBox(
            width: 350,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "About Us ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Projects",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Certifications",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Achievement",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
