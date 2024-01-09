import 'package:flutter/material.dart';

import 'app_enums.dart';

extension AppBarHeaderExtension on AppBarHeaders {
  String getString() {
    switch (this) {
      case AppBarHeaders.home:
        return 'Home';
      case AppBarHeaders.about:
        return 'About';
      case AppBarHeaders.experience:
        return 'Experience';
      case AppBarHeaders.projects:
        return 'Projects';
      case AppBarHeaders.contact:
        return 'Contact';
    }
  }
}

extension MediaQueryExtension on BuildContext {
  Size get _size => MediaQuery.of(this).size;
  double get width => _size.width;
  double get height => _size.height;
}

extension DeviceTypeExtension on DeviceType {
  int getMinWidth() {
    switch (this) {
      case DeviceType.mobile:
        return 320;
      case DeviceType.ipad:
        return 575;
      case DeviceType.smallScreenLaptop:
        return 769;
      case DeviceType.largeScreenDesktop:
        return 1025;
      case DeviceType.extraLargeTV:
        return 1201;
    }
  }

  int getMaxWidth() {
    switch (this) {
      case DeviceType.mobile:
        return 425;
      case DeviceType.ipad:
        return 768;
      case DeviceType.smallScreenLaptop:
        return 1024;
      case DeviceType.largeScreenDesktop:
        return 1440;
      case DeviceType.extraLargeTV:
        return 3840;
    }
  }
}
