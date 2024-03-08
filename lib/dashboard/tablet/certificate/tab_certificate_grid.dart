import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/certificate_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateGridTab extends StatelessWidget {
  const CertificateGridTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final count = certificateList.length;

    return Container(
      margin: const EdgeInsets.only(left: 80, right: 80),
      child: Column(
        children: [
          const Text(
            "Certificate",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          certiGrid(screenWidth, count, screenHeight),
        ],
      ),
    );
  }

  GridView certiGrid(double screenWidth, int count, double screenHeight) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjusted the number of columns
        mainAxisSpacing: screenWidth * 0.02, // Responsive spacing
        crossAxisSpacing: screenWidth * 0.02, // Responsive spacing
        childAspectRatio: 1.6, // Adjusted the aspect ratio
      ),
      itemCount: count, // Use the actual item count
      itemBuilder: (context, index) {
        CertificateModel certificate = certificateList[index];

        return Container(
          margin: EdgeInsets.all(screenWidth * 0.01), // Responsive margin
          height: screenHeight * 0.25, // Responsive height
          width: screenWidth * 0.38, // Responsive width
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Colors.pinkAccent,
              Colors.blue,
            ]),
            boxShadow: const [
              BoxShadow(
                color: Colors.pink,
                offset: Offset(-2, 0),
                blurRadius: 5,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2, 0),
                blurRadius: 5,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  certificate.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      certificate.organization,
                      style: const TextStyle(color: Colors.amber),
                    ),
                    Text(
                      certificate.date,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(
                  maxLines: 1,
                  TextSpan(
                    text: 'Skills : ',
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: certificate.skills,
                        style: const TextStyle(
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(certificate.credential));
                  },
                  child: Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          offset: Offset(0, -1),
                          blurRadius: 5,
                        ),
                        BoxShadow(
                          color: Colors.red,
                          offset: Offset(0, 1),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Credentials',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.01,
                        ),
                        const Icon(
                          CupertinoIcons.arrow_turn_up_right,
                          color: Colors.white,
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
