import 'package:flutter/material.dart';
import 'package:flutter_design_pattern_02/platform_button.dart';
import 'package:flutter_design_pattern_02/platform_indicator.dart';

abstract class AbstractFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImplement implements AbstractFactory {
  static AbstractFactoryImplement? _instance;
  AbstractFactoryImplement._internal();

  static AbstractFactoryImplement get instance {
    _instance ??= AbstractFactoryImplement._internal();
    return _instance!;
  }

  @override
  Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform)
        .build(onPressed, Text(text));
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
