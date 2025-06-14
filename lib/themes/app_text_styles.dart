// lib/theme/app_text_styles.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(33, 33, 33, 1), // <-- using centralized color
    fontFamily: 'Inter', // Match font-family
  );

  static const titleMedium = TextStyle(
    fontStyle: FontStyle.normal, // Match font-style
    fontWeight: FontWeight.w700, // 500 weight
    fontSize: 16, // 16px font size
    height: 1.5, // line-height: 24px / font-size: 16px = 1.5
    color: Color(0xFF0D1C17), // #0D1C17 color
  );

  static const headlineSmall = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
}
