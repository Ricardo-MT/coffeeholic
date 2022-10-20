import 'package:flutter/material.dart';

final Map<int, Color> _yellow = {
  50: const Color(0xFFFFF9E3),
  100: const Color(0xFFFFEFB9),
  200: const Color(0xFFFFE48A),
  300: const Color(0xFFFFD95B),
  400: const Color(0xFFFFD137),
  500: AppColors.yellow,
  600: const Color(0xFFFFC312),
  700: const Color(0xFFFFBC0E),
  800: const Color(0xFFFFB50B),
  900: const Color(0xFFFFA906),
};

class AppColors {
  static const Color success = Color.fromARGB(255, 53, 191, 46);
  static const Color info = Color(0xFFFFC914);
  static const Color error = Color(0xFFFB2346);

  static const Color yellow = Color(0xFFFFC914);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF1C1C1C);
  static const Color grey0 = Color(0xFF707070);
  static const Color grey1 = Color(0xFF7B7B7B);
  static const Color grey2 = Color(0xFFC7C7C7);
  static const Color grey3 = Color(0xFFF5F5F5);
  static const Color background = white;
  static MaterialColor primary =
      MaterialColor(AppColors.yellow.value, _yellow);
}
