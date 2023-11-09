import 'package:flutter/material.dart';
import 'package:flutter_design_pattern_02/platform_button.dart';
import 'package:flutter_design_pattern_02/platform_indicator.dart';

class AbstractFactory {
  static Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform)
        .build(onPressed, Text(text));
  }

  static Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
