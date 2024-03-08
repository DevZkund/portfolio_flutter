import 'package:flutter/material.dart';
import 'package:portfolio/model/education_model.dart';

class EducationGridDesktop extends StatelessWidget {
  const EducationGridDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjusted the number of columns
        mainAxisSpacing: screenWidth * 0.01, // Responsive spacing
        crossAxisSpacing: screenWidth * 0.01, // Responsive spacing
        childAspectRatio: 3.5, // Adjusted the aspect ratio
      ),
      itemCount: educationList.length,
      itemBuilder: (context, index) {
        Educations edu = educationList[index];
        return Container(
          margin: EdgeInsets.all(screenWidth * 0.003), // Responsive margin
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 251, 255, 20),
              Color.fromARGB(255, 29, 5, 236),
            ]),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 254),
                offset: Offset(-2, 0),
                blurRadius: 0,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2, 0),
                blurRadius: 2,
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.01,
              vertical: screenHeight * 0.01,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF000515),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(edu.image),
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.06,
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        edu.std,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.009, // Adjusted font size
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        edu.collegeName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.008, // Adjusted font size
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        edu.session,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.008, // Adjusted font size
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
