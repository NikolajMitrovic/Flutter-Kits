import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/helpers/colors.dart';

ThemeData themeLight(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    backgroundColor : ColorLight.background,
    cardColor: ColorLight.card,
    disabledColor: ColorLight.disabledButton,
    errorColor: ColorLight.error,
    hintColor: ColorLight.fontSubtitle,
    indicatorColor: ColorLight.primary,
    primaryIconTheme: const IconThemeData(
      color: ColorLight.fontTitle,
    ),
    primaryColor: ColorLight.primary,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorLight.primary,
    ),
    scaffoldBackgroundColor : ColorLight.background,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      button: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

ThemeData themeDark(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    backgroundColor : ColorDark.background,
    cardColor: ColorDark.card,
    disabledColor: ColorDark.disabledButton,
    errorColor: ColorDark.error,
    hintColor: ColorDark.fontSubtitle,
    indicatorColor: ColorDark.primary,
    primaryIconTheme: const IconThemeData(
      color: ColorDark.fontTitle,
    ),
    primaryColor: ColorDark.primary,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorDark.primary,
    ),
    scaffoldBackgroundColor : ColorDark.background,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      button: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
