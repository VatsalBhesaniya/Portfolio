import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'package:portfolio/utils/app_strings.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          AppStrings.projectsMsg,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? Theme.of(context).textTheme.labelSmall
              : Theme.of(context).textTheme.bodySmall,
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
