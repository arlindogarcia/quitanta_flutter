import 'package:flutter/material.dart';
import 'package:quitanta_flutter/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? quitandaTitleColor;
  final double textSize;

  const AppNameWidget({
    Key? key,
    this.quitandaTitleColor,
    this.textSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Quitanda',
            style: TextStyle(
              color: quitandaTitleColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: 'Virtual',
            style: TextStyle(
              color: CustomColors.customContrastColor,
            ),
          ),
        ],
      ),
    );
  }
}
