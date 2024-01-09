import 'package:flutter/material.dart';
import 'package:portfolio/models/responsive_size.dart';
import 'package:portfolio/utils/app_assets.dart';
import 'package:portfolio/utils/app_extensions.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .68,
      ipadSize: context.width * .40,
      smallScreenSize: context.width * .27,
    );
    final responsiveContainer = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .52,
      ipadSize: context.width * .3,
      smallScreenSize: context.width * .19,
    );
    return SizedBox(
      height: responsiveSize.getSize(),
      child: Container(
        width: responsiveContainer.getSize(),
        height: responsiveContainer.getSize(),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(AppAssets.devImg),
          ),
        ),
      ),
    );
  }
}
