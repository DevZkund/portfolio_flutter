import 'package:flutter/material.dart';

class AppBarTab extends StatelessWidget {
  const AppBarTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromARGB(255, 0, 5, 21),
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 20, // Reduce the left spacing
          ),
          Image(
            image: const AssetImage("images/logo.gif"),
            height: 40, // Adjust the logo height
            width: screenWidth * 0.2, // Set logo width based on screen width
          ),
          const SizedBox(
            width: 20, // Reduce the right spacing
          ),
          _buildTextButton("Home", context),
          _buildTextButton("About Us", context),
          _buildTextButton("Projects", context),
          _buildTextButton("Certifications", context),
          _buildTextButton("Achievement", context),
        ],
      ),
    );
  }

  Widget _buildTextButton(String text, BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
