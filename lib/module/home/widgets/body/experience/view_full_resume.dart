
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewFullResume extends StatelessWidget {
  const ViewFullResume({super.key});
  
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        final bytes = await rootBundle.load('assets/pdf/Resume.pdf');
        html.Blob blob = html.Blob([bytes], 'application/pdf');
        final url = html.Url.createObjectUrlFromBlob(blob);
        html.window.open(url, '_blank');
      },
      icon: Icon(
        Icons.arrow_outward_rounded,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      label: Text(
        'View Full Resume',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
