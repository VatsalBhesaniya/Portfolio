import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/utils/app_constants.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'package:portfolio/widgets/custom_divider.dart';

class ExperienceTimeline extends StatelessWidget {
  const ExperienceTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildStep(AppConstants.experience[0], context),
        const CustomDivider(height: 20),
        _buildStep(AppConstants.experience[1], context),
        const CustomDivider(height: 20),
        _buildStep(AppConstants.experience[2], context),
        const CustomDivider(height: 20),
        _buildStep(AppConstants.experience[3], context),
        const CustomDivider(height: 20),
        _buildStep(AppConstants.experience[4], context),
      ],
    );
  }

  Widget _buildStep(Experience experience, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          experience.role,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              experience.company,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              experience.period,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          experience.description,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? Theme.of(context).textTheme.labelSmall
              : Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: experience.skills
              .map(
                (skill) => Chip(
                  shape: const StadiumBorder(),
                  label: Text(
                    skill,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
