import 'package:flutter/material.dart';
import 'package:portfolio/module/home/widgets/body/about_me/skills_and_tech.dart';
import 'package:portfolio/widgets/custom_divider.dart';
import 'about_me_intro.dart';
import 'experience_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutMeIntro(),
          SizedBox(height: 40),
          Center(
            child: CustomDivider(),
          ),
          SizedBox(height: 20),
          ExperienceInfo(),
          SizedBox(height: 58),
          SkillsAndTech(),
        ],
      ),
    );
  }
}
