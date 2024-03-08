import 'package:flutter/material.dart';
import 'package:portfolio/model/project_details.dart';

class ProjectGridDesktop extends StatelessWidget {
  const ProjectGridDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.01), // Responsive padding
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: projectList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjusted the number of columns
          mainAxisSpacing: screenWidth * 0.02, // Responsive spacing
          crossAxisSpacing: screenWidth * 0.02, // Responsive spacing
          childAspectRatio: 1.8, // Adjusted the aspect ratio
        ),
        itemBuilder: (context, index) {
          Projects project = projectList[index];
          return Container(
            margin: EdgeInsets.all(screenWidth * 0.01), // Responsive margin
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), // Adjusted border radius
              gradient: const LinearGradient(
                colors: [Colors.pinkAccent, Colors.blue],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.01, // Responsive padding
                vertical: screenWidth * 0.01, // Responsive padding
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF000515),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      project.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18, // Adjusted font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    project.description,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Check on Github',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your action here
                        },
                        child: const Text(
                          'Read More >>',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
