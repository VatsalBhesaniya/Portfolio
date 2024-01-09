import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.width <= DeviceType.mobile.getMaxWidth() ? 10 :context.height * .12),
      child: context.width <= DeviceType.mobile.getMaxWidth()
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntroCircleImageBox(),
                SizedBox(height: 10),
                IntroText(),
                SizedBox(height: 70),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: IntroText(),
                ),
                SizedBox(width: context.width * 0.1),
                const IntroCircleImageBox(),
              ],
            ),
    );
  }
}
