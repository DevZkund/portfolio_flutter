import 'package:flutter/material.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
 @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildContactInfoCard(
              context,
              "Email",
              "devzkund@gmail.com",
            ),
            _buildContactInfoCard(
              context,
              "Github",
              "Devzkund",
            ),
            _buildContactInfoCard(
              context,
              "LinkedIn",
              "devzkund@gmail.com",
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.05), // Responsive spacing
        _buildContactForm(context, screenWidth, screenHeight),
        SizedBox(height: screenHeight * 0.1), // Responsive spacing
      ],
    );
  }

  Widget _buildContactInfoCard(
      BuildContext context, String title, String content) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.2,
      width: screenWidth * 0.2,
      margin: EdgeInsets.all(screenWidth * 0.02), // Responsive margin
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient:
            const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]),
        boxShadow: const [
          BoxShadow(
            color: Colors.pink,
            offset: Offset(0, -1),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.blue,
            offset: Offset(0, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF000515),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.01), // Responsive spacing
            Text(
              content,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactForm(
      BuildContext context, double screenWidth, double screenHeight) {
    final TextEditingController name = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController message = TextEditingController();
    return Container(
      height: screenHeight * 0.8,
      width: screenWidth * 0.6,
      margin: EdgeInsets.all(screenWidth * 0.01), // Responsive margin
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient:
            const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]),
        boxShadow: const [
          BoxShadow(
            color: Colors.pink,
            offset: Offset(0, -1),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.blue,
            offset: Offset(0, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: screenHeight * 0.05, // Responsive padding
          right: screenWidth * 0.1, // Responsive padding
          left: screenWidth * 0.1, // Responsive padding
          bottom: screenHeight * 0.02, // Responsive padding
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF000515),
        ),
        child: Column(
          children: [
            const Text(
              "Send Email",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Responsive spacing
            TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: name,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Responsive spacing
            TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: email,
              decoration: const InputDecoration(
                labelText: 'Your email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Responsive spacing
            TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: message,
              maxLines: 6,
              decoration: const InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenHeight * 0.03), // Responsive spacing
            InkWell(
              onTap: () {},
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(0, -1),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, 1),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF000515),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
