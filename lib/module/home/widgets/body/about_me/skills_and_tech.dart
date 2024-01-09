import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_constants.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'package:portfolio/utils/app_strings.dart';

class SkillsAndTech extends StatelessWidget {
  const SkillsAndTech({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.skillsAndTech,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 8),
        _buildSkillsSection(AppStrings.programmingLanguages, AppConstants.programmingLanguages, context),
        const SizedBox(height: 20),
        _buildSkillsSection(AppStrings.librariesAndFrameworks, AppConstants.librariesAndFrameworks, context),
        const SizedBox(height: 20),
        _buildSkillsSection(AppStrings.toolsAndPlatforms, AppConstants.toolsAndPlatforms, context),
      ],
    );
  }

  Column _buildSkillsSection(String title, List<String> skills, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? Theme.of(context).textTheme.labelSmall
              : Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: skills
              .map(
                (title) => Chip(
                  shape: const StadiumBorder(),
                  label: Text(
                    title,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
