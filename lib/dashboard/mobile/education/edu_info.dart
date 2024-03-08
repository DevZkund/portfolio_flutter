import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/mobile/certificate/mobile_certificate_grid.dart';
import 'package:portfolio/model/education_model.dart';

class EduInfoMobile extends StatelessWidget {
  const EduInfoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: screenWidth * 0.9,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.05,
              ),
              const Text(
                "Education",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjusted the number of columns
                  mainAxisSpacing: screenWidth * 0.02, // Responsive spacing
                  crossAxisSpacing: screenWidth * 0.02, // Responsive spacing
                  childAspectRatio: 2.5, // Adjusted the aspect ratio
                ),
                itemCount: educationList.length,
                itemBuilder: (context, index) {
                  Educations edu = educationList[index];
                  return Container(
                    margin:
                        EdgeInsets.all(screenWidth * 0.01), // Responsive margin
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
                        horizontal: screenWidth * 0.02,
                        vertical: screenHeight * 0.02,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF000515),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage(edu.image),
                              height: screenHeight * 0.06,
                              width: screenWidth * 0.06,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.10,
                            width: screenWidth * 0.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  edu.std,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth *
                                        0.016, // Adjusted font size
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  edu.collegeName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth *
                                        0.014, // Adjusted font size
                                    letterSpacing: 1,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  edu.session,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth *
                                        0.014, // Adjusted font size
                                  ),
                                  maxLines: 2,
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
              ),
              // -------------Certificate----------------//
              SizedBox(
                height: screenHeight * 0.05,
              ),
              const CertificateGridMobile(),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              const Text(
                "---------------</ devzkund />----------------",
                style: TextStyle(color: Colors.white, letterSpacing: 3),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
