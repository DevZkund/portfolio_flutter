class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Getting started with Flutter Development',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'Flutter . Dart',
    credential: 'https://coursera.org/share/1a17f42a3f4e0d681b5da0e5c5b2a0c2',
  ),
  CertificateModel(
    name: 'Material Components for Flutter Basics',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'Flutter . Network Security . Mobile & Web Development',
    credential: 'https://coursera.org/share/80d013a7f909c5d6c27682d98e9f30ad',
  ),
  CertificateModel(
    name: 'Prototypes in Figma: Creating an Initial Low Fidelity Design',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'Web Design . Mobile App . Figma . Website Wireframe',
    credential: 'https://coursera.org/share/734bc653e1c7a51c79644be4236e2aa3',
  ),
  CertificateModel(
    name: 'Introduction to Android Mobile Application Development',
    organization: 'Coursera',
    date: 'AUG 2023',
    skills: 'Android Studio . Application development . Mobile Development',
    credential: 'https://coursera.org/share/b254508b876f57306490024642195773',
  ),
  CertificateModel(
    name: 'Introduction to Back-End Development',
    organization: 'Coursera',
    date: 'SEP 2023',
    skills:
        'Distinguish between front-end, back-end, and full-stack developers',
    credential: 'https://coursera.org/share/d9507060316607b1222798a78da75f96',
  ),
];
