import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_constants.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'project_item.dart';

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: _getAspectRatio(context.width),
      ),
      itemBuilder: (context, index) {
        return ProjectItem(
          project: AppConstants.projects[index],
        );
      },
      itemCount: AppConstants.projects.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.projects.length;
    if (deviceWidth <= DeviceType.ipad.getMinWidth()) {
      return 1;
    } else if (deviceWidth <= DeviceType.largeScreenDesktop.getMaxWidth()) {
      return 2;
    } else if (deviceWidth <= DeviceType.extraLargeTV.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth <= DeviceType.mobile.getMinWidth()) {
      return 0.8;
    } else if (deviceWidth > DeviceType.mobile.getMinWidth() &&
        deviceWidth <= DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth > DeviceType.mobile.getMaxWidth() &&
        deviceWidth <= DeviceType.ipad.getMinWidth()) {
      return 1.2;
    } else if (deviceWidth > DeviceType.ipad.getMinWidth() &&
        deviceWidth <= DeviceType.ipad.getMaxWidth()) {
      return 0.8;
    } else if (deviceWidth > DeviceType.ipad.getMaxWidth() &&
        deviceWidth <= DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 1.2;
    } else if (deviceWidth >= DeviceType.smallScreenLaptop.getMinWidth() &&
        deviceWidth < DeviceType.extraLargeTV.getMinWidth()) {
      return 1.5;
    } else if (deviceWidth > DeviceType.extraLargeTV.getMinWidth() &&
        deviceWidth <= DeviceType.largeScreenDesktop.getMaxWidth()) {
      return 1.7;
    } else {
      return 1.2;
    }
  }
}
