import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';

ThemeData themeLight = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.blue,
    secondary: Colors.white,
    background: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(color: Colors.black, size: 26),
    toolbarTextStyle: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.manrope(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
  ),
  // tabBarTheme: const TabBarTheme(
  //   unselectedLabelColor: AppColors.grey,
  //   labelColor: Colors.black,
  // )
);
