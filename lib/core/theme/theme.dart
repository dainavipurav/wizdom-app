import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizdom_app/core/theme/colors.dart';
import 'package:wizdom_app/core/theme/text_styles.dart';

abstract class AppTheme {
  static const _colorScheme = ColorScheme.light(
    surface: AppColors.surface,
    surfaceContainer: AppColors.surfaceContainer,
    onSurface: AppColors.onSurface,
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryContainer,
    onPrimary: AppColors.whiteColor,
    error: AppColors.error,
  );

  static final _cardTheme = CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    color: AppColors.backgroundColor,
    elevation: 4,
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.primary),
      foregroundColor: WidgetStatePropertyAll(AppColors.whiteColor),
      padding: WidgetStatePropertyAll(
        const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),
  );

  static _outlinedButtonTheme([Color borderColor = AppColors.primary]) =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              side: BorderSide(width: 3, color: borderColor),
            ),
          ),
          padding: WidgetStatePropertyAll(
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
        ),
      );

  static final _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.surface,
    titleTextStyle: AppTextStyles.headlineLarge.copyWith(
      fontWeight: FontWeight.w800,
    ),
    elevation: 2,
  );

  static final _dialogTheme = DialogTheme(
    backgroundColor: AppColors.surfaceContainer,
    barrierColor: AppColors.blackColor.withValues(alpha: 0.6),
    alignment: Alignment.center,
    insetPadding: EdgeInsets.all(46),
  );

  static final _textTheme = GoogleFonts.nunitoTextTheme().copyWith(
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.bodyMedium,
    bodySmall: AppTextStyles.bodySmall,
    displayLarge: AppTextStyles.displayLarge,
    displayMedium: AppTextStyles.displayMedium,
    displaySmall: AppTextStyles.displaySmall,
    headlineLarge: AppTextStyles.headlineLarge,
    headlineMedium: AppTextStyles.headlineMedium,
    headlineSmall: AppTextStyles.headlineSmall,
    labelLarge: AppTextStyles.labelLarge,
    labelMedium: AppTextStyles.labelMedium,
    labelSmall: AppTextStyles.labelSmall,
    titleLarge: AppTextStyles.titleLarge,
    titleMedium: AppTextStyles.titleMedium,
    titleSmall: AppTextStyles.titleSmall,
  );

  static final lightThemeMode = ThemeData.light().copyWith(
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: _appBarTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    cardTheme: _cardTheme,
    outlinedButtonTheme: _outlinedButtonTheme(),
    textTheme: _textTheme,
    dialogBackgroundColor: AppColors.surfaceContainer,
    dialogTheme: _dialogTheme,
  );
}
