import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 0; // 9
  static double screenHeight = 0; // 6
  static double textMultiplier = 0;
  static double blockHeight = 0;
  static double blockWidth = 0;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  double heightSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.height * value;
  }

  double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
    }

    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
    textMultiplier = blockHeight;
  }
}
