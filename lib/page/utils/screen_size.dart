import 'package:flutter/material.dart';

class ScreenSizeUtil {
  static bool isScreenSmall(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100;
  }
}
