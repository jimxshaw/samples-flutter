import 'package:flutter/material.dart';

class ThemeColors {
  static const primary = Colors.lightBlue;

  static const text = Colors.black87;

  static const textLight = Colors.black38;
}

class ThemeText {
  static const bodyText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ThemeColors.text,
    height: 1.2,
  );

  static const caption = TextStyle(
    fontSize: 12,
    color: ThemeColors.textLight,
    height: 1.2,
  );
}
