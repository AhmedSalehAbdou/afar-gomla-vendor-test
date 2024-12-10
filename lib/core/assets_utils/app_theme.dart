import 'package:flutter/material.dart';
import '../../../../../core/assets_utils/app_strings.dart';

import 'app_colors.dart';
import 'app_dimens.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.gray,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      secondary: AppColors.secondary,
      primary: AppColors.primary,
    ),
    fontFamily: AppStrings.fontFamily,
    scaffoldBackgroundColor: Colors.white,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.primary),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      margin: const EdgeInsets.all(2),
      shadowColor: const Color(0xff868585),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.primary,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 24,
        fontFamily: AppStrings.fontFamily,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: AppDimens.xSmallFontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      displayMedium: TextStyle(
        fontSize: AppDimens.smallFontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      displaySmall: TextStyle(
        fontSize: AppDimens.normalFontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      headlineMedium: TextStyle(
        fontSize: AppDimens.mediumFontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      headlineSmall: TextStyle(
        fontSize: AppDimens.largeFontSize,
        fontWeight: FontWeight.w700,
        color: AppColors.primary,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      titleLarge: TextStyle(
        fontSize: AppDimens.xLargeFontSize,
        fontWeight: FontWeight.w700,
        color: AppColors.primary,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      titleMedium: TextStyle(
        fontSize: AppDimens.smallFontSize,
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      titleSmall: TextStyle(
        fontSize: AppDimens.mediumFontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
        height: 1.3,
        fontFamily: AppStrings.fontFamily,
      ),
      bodySmall: TextStyle(
        fontSize: AppDimens.normalFontSize,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
        height: 1.2,
        fontFamily: AppStrings.fontFamily,
      ),
    ),
  );
}
