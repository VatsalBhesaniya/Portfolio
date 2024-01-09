import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'package:portfolio/utils/app_strings.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.numOfExperience,
          style: _getNumOfExperienceStyle(context).copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Text(
            AppStrings.experienceMsg,
            style: _getExpMsgStyle(context),
            softWrap: true,
          ),
        ),
      ],
    );
  }

  _getNumOfExperienceStyle(BuildContext context) {
    if (context.width < DeviceType.mobile.getMaxWidth()) {
      return Theme.of(context).textTheme.titleLarge;
    } else if (context.width < DeviceType.ipad.getMaxWidth()) {
      return Theme.of(context).textTheme.headlineLarge;
    } else {
      return Theme.of(context).textTheme.displayLarge;
    }
  }

  _getExpMsgStyle(BuildContext context) {
    if (context.width < DeviceType.mobile.getMaxWidth()) {
      return Theme.of(context).textTheme.labelLarge;
    } else if (context.width < DeviceType.ipad.getMaxWidth()) {
      return Theme.of(context).textTheme.bodyMedium;
    } else {
      return Theme.of(context).textTheme.titleMedium;
    }
  }
}
