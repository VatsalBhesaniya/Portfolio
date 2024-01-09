import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:universal_html/html.dart' as html;

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (project.previewLink != null)
          Expanded(
            child: CustomButton(
              label: 'Preview',
              onPressed: () {
                html.window.open(project.previewLink!, '_blank');
              },
            ),
          ),
        if (project.githubRepoLink != null) ...[
          if (project.previewLink != null) const SizedBox(width: 18),
          Expanded(
            child: CustomButton(
              label: 'Github',
              onPressed: () {
                html.window.open(project.githubRepoLink!, '_blank');
              },
            ),
          ),
        ],
        if (project.googlePlay != null) ...[
          if (project.previewLink != null || project.githubRepoLink != null)
            const SizedBox(width: 18),
          Expanded(
            child: CustomButton(
              label: 'play store',
              onPressed: () {
                html.window.open(project.googlePlay!, '_blank');
              },
            ),
          ),
        ],
      ],
    );
  }
}
