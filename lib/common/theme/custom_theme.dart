
import 'package:flutter/material.dart';
import 'package:toss_app_div/common/theme/shadows/abs_theme_shadows.dart';
import 'package:toss_app_div/common/theme/shadows/dart_app_shadows.dart';
import 'package:toss_app_div/common/theme/shadows/light_app_shadows.dart';

import '../constant/app_colors.dart';
import 'color/abs_theme_colors.dart';
import 'color/dark_app_colors.dart';
import 'color/light_app_colors.dart';

enum CustomTheme {
  dark,
  light;

  static MaterialColor primarySwatchColor = Colors.lightBlue;

  AbstractThemeColors get appColors {
    switch (this) {
      case CustomTheme.dark:
        return DarkAppColors();
      case CustomTheme.light:
        return LightAppColors();
    }
  }

  AbsThemeShadows get appShadows {
    switch (this) {
      case CustomTheme.dark:
        return DarkAppShadows();
      case CustomTheme.light:
        return LightAppShadows();
    }
  }

  ThemeData get themeData {
    switch (this) {
      case CustomTheme.dark:
        return darkTheme;
      case CustomTheme.light:
        return lightTheme;
    }
  }

  static ThemeData lightTheme = ThemeData(
      primarySwatch: primarySwatchColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      // textTheme: GoogleFonts.singleDayTextTheme(
      //   ThemeData(brightness: Brightness.light).textTheme,
      // ),
      colorScheme: const ColorScheme.light(background: Colors.white));

  static ThemeData darkTheme = ThemeData(
      primarySwatch: primarySwatchColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.veryDarkGrey,
      // textTheme: GoogleFonts.nanumMyeongjoTextTheme(
      //   ThemeData(brightness: Brightness.dark).textTheme,
      // ),
      colorScheme: const ColorScheme.dark(background: AppColors.veryDarkGrey));
}
