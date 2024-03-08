import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/certificate_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateGridDesktop extends StatelessWidget {
  const CertificateGridDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.01), // Responsive padding
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjusted the number of columns
          mainAxisSpacing: screenWidth * 0.02, // Responsive spacing
          crossAxisSpacing: screenWidth * 0.02, // Responsive spacing
          childAspectRatio: 1.8, // Adjusted the aspect ratio
        ),
        itemCount: certificateList.length,
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
                        color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
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
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
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
                              overflow: TextOverflow.ellipsis),
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
                      width: screenWidth * 0.1,
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
                            style: TextStyle(color: Colors.white, fontSize: 10),
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
      ),
    );
  }
}
