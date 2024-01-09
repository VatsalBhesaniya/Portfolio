import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'package:portfolio/utils/app_strings.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.stretch,
      children: [
        Text(
          AppStrings.helloIM,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? Theme.of(context).textTheme.labelMedium
              : Theme.of(context).textTheme.bodyMedium,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 6),
        Text(
          AppStrings.developerName,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? Theme.of(context).textTheme.titleLarge
              : Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Theme.of(context).colorScheme.tertiary,
              ),
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width - 20
              : context.width / 2.5,
          child: Text(
            AppStrings.introMsg,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? Theme.of(context).textTheme.labelSmall
                : Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
            softWrap: true,
          ),
        ),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}
