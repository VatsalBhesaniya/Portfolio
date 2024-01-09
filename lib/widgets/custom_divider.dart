import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.thickness = 1,
    this.height = 1,
    this.color,
  });

  final double thickness;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? Theme.of(context).colorScheme.secondaryContainer,
      thickness: thickness,
      height: height,
    );
  }
}
