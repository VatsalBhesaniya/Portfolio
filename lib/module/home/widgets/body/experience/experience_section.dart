import 'package:flutter/material.dart';
import 'package:portfolio/module/home/widgets/body/experience/experience_grid.dart';
import 'package:portfolio/module/home/widgets/body/experience/view_full_resume.dart';
import 'package:portfolio/utils/app_strings.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.experience,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 10),
          const ExperienceTimeline(),
          const SizedBox(height: 10),
          const ViewFullResume(),
        ],
      ),
    );
  }
}
