import 'package:coffeeholic/theming/palette.dart';
import 'package:coffeeholic/theming/text_styles.dart';
import 'package:flutter/material.dart';

class FlutterCoffeeholicTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: lightColorScheme.primary,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.yellow,
      ),
      textTheme: textTheme,
      colorScheme: lightColorScheme,
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: lightColorScheme.primary,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.yellow,
      ),
      textTheme: textTheme,
      colorScheme: darkColorScheme,
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static TextTheme get textTheme {
    return TextTheme(
      headline1: AppTextStyle.h1Style,
      headline2: AppTextStyle.h1Style.copyWith(fontSize: 20),
      headline3: AppTextStyle.h1Style.copyWith(fontSize: 18),
      headline4: AppTextStyle.h1Style.copyWith(fontSize: 16),
      headline5: AppTextStyle.h1Style.copyWith(fontSize: 14),
      headline6: AppTextStyle.h1Style.copyWith(fontSize: 12),
      bodyText1: AppTextStyle.labelStyle,
      bodyText2: AppTextStyle.labelStyle.copyWith(fontSize: 14),
      button: AppTextStyle.buttonTextStyle,
    ).apply(
      fontFamily: 'Raleway',
    );
  }

  static ColorScheme get lightColorScheme {
    return ThemeData.light().colorScheme.copyWith(
          primary: AppColors.yellow,
          onPrimary: AppColors.black,
          secondary: AppColors.grey1,
          onSecondary: AppColors.black,
          error: AppColors.error,
          tertiary: AppColors.grey2,
          brightness: Brightness.light,
        );
  }

  static ColorScheme get darkColorScheme {
    return ThemeData.dark().colorScheme.copyWith(
          primary: AppColors.black,
          onPrimary: AppColors.yellow,
          secondary: AppColors.black,
          onSecondary: AppColors.grey1,
          error: AppColors.error,
          tertiary: AppColors.grey2,
          brightness: Brightness.dark,
        );
  }
}
