import 'package:flutter/material.dart';
import 'package:portfolio/module/home/widgets/body/contact/social_medial_icons.dart';
import 'contact_intro.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactIntro(),
          SizedBox(height: 20),
          SocialMediaIcons(),
        ],
      ),
    );
  }
}
