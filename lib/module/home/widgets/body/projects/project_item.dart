import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surfaceVariant
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(imageUrl: project.imageUrl),
          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              project.name,
              style: context.width < DeviceType.mobile.getMaxWidth()
                  ? Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                      )
                  : Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
            ),
          ),
          const SizedBox(height: 8),
          AutoSizeText(
            project.description,
            style: context.width < DeviceType.mobile.getMaxWidth()
                ? Theme.of(context).textTheme.labelSmall
                : Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
            minFontSize: 14,
            maxFontSize: 16,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          ProjectActions(project: project)
        ],
      ),
    );
  }
}
