import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_enums.dart';
import 'package:portfolio/utils/app_extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  final Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _getButtonHeight(context.width),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
          backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AutoSizeText(
                label,
                style: _getButtonFontSize(context),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _getButtonHeight(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 36;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 42;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 44;
    } else {
      return 48;
    }
  }

  TextStyle? _getButtonFontSize(BuildContext context) {
    if (context.width < DeviceType.mobile.getMaxWidth()) {
      return Theme.of(context).textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary,
          );
    } else if (context.width < DeviceType.ipad.getMaxWidth()) {
      return Theme.of(context).textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary,
          );
    } else if (context.width < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return Theme.of(context).textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary,
          );
    } else {
      return Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary,
          );
    }
  }
}
