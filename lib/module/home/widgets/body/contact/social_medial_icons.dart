import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/social_links.dart';
import 'package:universal_html/html.dart' as html;

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.envelope,
          link: SocialLinks.email,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.github,
          link: SocialLinks.github,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.linkedinIn,
          link: SocialLinks.linkedin,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.twitter,
          link: SocialLinks.twitter,
        ),
      ],
    );
  }
}

class SocialMediaIconBtn extends StatelessWidget {
  const SocialMediaIconBtn({super.key, required this.icon, this.link});
  final IconData icon;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.only(right: 20),
      ),
      onPressed: () {
        html.window.open(link!, '_blank');
      },
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.tertiary,
        size: 32,
      ),
    );
  }
}
