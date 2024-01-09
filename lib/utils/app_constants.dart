import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<String> programmingLanguages = [
    'Dart',
    'Java',
    'JavaScript',
    'Python'
  ];
  static const List<String> librariesAndFrameworks = ['Flutter', 'React', 'Node.js', 'FastAPI'];
  static const List<String> toolsAndPlatforms = ['Firebase', 'PostgreSQL', 'GitHub'];

  static const List<Experience> experience = [
    Experience(
      role: 'Frontend Intern(Flutter)',
      company: 'Ventura',
      period: 'May 2023 - Sep 2023 · 5 mos',
      description:
          'Developed and implemented a module for a mobile and web application. Conducted bug fixing and troubleshooting tasks, ensuring optimal performance.',
      skills: ['Flutter', 'Dart', 'GetX', 'Firebase'],
    ),
    Experience(
      role: 'Software Engineer',
      company: 'GoBall',
      period: 'Dec 2021 - Aug 2022 · 9 mos',
      description:
          '''Developed a sports application enabling users to build communities and live stream their games. I achieved targets, including delivering the MVP one month earlier than anticipated, and implemented robust UI testing procedures.''',
      skills: [
        'Flutter',
        'Dart',
        'REST APIs',
        'GitHub',
        'Code Review',
        'Test Cases',
        'OOP',
        'Project Management'
      ],
    ),
    Experience(
      role: 'Flutter Developer',
      company: 'Twinr',
      period: 'Jul 2021 - Dec 2021 · 6 mos',
      description:
          '''Developed a Flutter web application from scratch, allowing users to configure mobile applications effortlessly. I also created independently versioned packages for Firebase services, styles, and fonts. Additionally, I developed a package enabling the conversion of web applications into apps using JSON configurations, showcasing my versatility in Flutter development.''',
      skills: [
        'Flutter',
        'Flutter Web',
        'Dart',
        'Firebase',
        'GitHub'
      ],
    ),
    Experience(
      role: 'Flutter Developer',
      company: 'IBL Infotech',
      period: 'Feb 2020 - Aug 2021 · 1 yr 7 mos',
      description:
          '''Developed mobile applications for Android and IOS. I implemented best practices for state management, wrote clean and readable code using BLoC and Provider state management libraries, and collaborated in an agile environment. Notably, I built a secure social media application with features such as RSA and AES encryption, custom widgets, and a pixel-perfect UI.''',
      skills: [
        'Flutter',
        'Dart',
        'Firebase',
        'GitHub'
      ],
    ),
    Experience(
      role: 'Flutter Developer | Android Developer | ASP.NET Developer',
      company: 'Freelance',
      period: 'Feb 2019 - Feb 2020 · 1 yr 1 mo',
      description:
          '''Developed a native Android app for a restaurant, later migrated to Flutter for improved UI and performance. I also created an expense tracker application using Flutter and built an admin panel using ASP.NET MVC for Amazon and eBay seller portals, achieving 100% client satisfaction and on-time delivery.''',
      skills: [
        'Flutter',
        'Dart',
        'Android',
        'Java',
        'ASP.NET MVC',
        'C#',
        'SQL',
        'jQuery',
        'HTML',
        'CSS',
        'OOP',
      ],
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'PMA - Frontend',
      imageUrl: AppAssets.pojectPmaImg,
      description:
          'A mobile Application to streamline the process of managing projects and tasks within an organization.',
      githubRepoLink:
          'https://github.com/VatsalBhesaniya/PMA-Frontend',
    ),
    Project(
      name: 'PMA - Backend',
      imageUrl: AppAssets.pojectPmaImg,
      description:
          'A mobile Application to streamline the process of managing projects and tasks within an organization.',
      githubRepoLink:
          'https://github.com/VatsalBhesaniya/PMA-Backend',
    ),
    Project(
      name: 'Twinr',
      imageUrl: AppAssets.pojectTwinrImg,
      description:
          'Mobile app builder enables users to create customizable mobile apps without writing a single line of code.',
      previewLink: 'https://builder.twinr.dev/',
    ),
    Project(
      name: 'Connect',
      imageUrl: AppAssets.pojectConnectImg,
      description: 'A mobile application to communicate with people around the world.',
      githubRepoLink: 'https://github.com/VatsalBhesaniya/Connect-App',
      previewLink: 'https://play.google.com/store/apps/details?id=com.brillantetechnology.connect',
    ),
  ];
}
