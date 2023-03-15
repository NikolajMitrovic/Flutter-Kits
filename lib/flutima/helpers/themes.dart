import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/colors.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

ThemeData themeLight(BuildContext context) {
  final theme = Provider.of<ThemeProvider>(context);

  Color primaryLight(ThemeUIKit val) {
    switch (val) {
      case ThemeUIKit.barbera:
        return PrimaryColorLight.barbera;
      case ThemeUIKit.belila:
        return PrimaryColorLight.belila;
      case ThemeUIKit.bellcommerce:
        return PrimaryColorLight.bellcommerce;
      case ThemeUIKit.coffiy:
        return PrimaryColorLight.coffiy;
      case ThemeUIKit.foodiy:
        return PrimaryColorLight.foodiy;
      case ThemeUIKit.furney:
        return PrimaryColorLight.furney;
      case ThemeUIKit.lestate:
        return PrimaryColorLight.lestate;
      case ThemeUIKit.movlix:
        return PrimaryColorLight.movlix;
      case ThemeUIKit.shuppy:
        return PrimaryColorLight.shuppy;
      case ThemeUIKit.treshop:
        return PrimaryColorLight.treshop;
    }
  }

  return ThemeData(
    brightness: Brightness.light,
    backgroundColor : ColorLight.background,
    cardColor: ColorLight.card,
    disabledColor: ColorLight.disabledButton,
    errorColor: ColorLight.error,
    hintColor: ColorLight.fontSubtitle,
    indicatorColor: primaryLight(theme.themeUIKit),
    primaryIconTheme: const IconThemeData(
      color: ColorLight.fontTitle,
    ),
    primaryColor: primaryLight(theme.themeUIKit),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryLight(theme.themeUIKit),
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
  final theme = Provider.of<ThemeProvider>(context);

  Color primaryDark(ThemeUIKit val) {
    switch (val) {
      case ThemeUIKit.barbera:
        return PrimaryColorDark.barbera;
      case ThemeUIKit.belila:
        return PrimaryColorDark.belila;
      case ThemeUIKit.bellcommerce:
        return PrimaryColorDark.bellcommerce;
      case ThemeUIKit.coffiy:
        return PrimaryColorDark.coffiy;
      case ThemeUIKit.foodiy:
        return PrimaryColorDark.foodiy;
      case ThemeUIKit.furney:
        return PrimaryColorDark.furney;
      case ThemeUIKit.lestate:
        return PrimaryColorDark.lestate;
      case ThemeUIKit.movlix:
        return PrimaryColorDark.movlix;
      case ThemeUIKit.shuppy:
        return PrimaryColorDark.shuppy;
      case ThemeUIKit.treshop:
        return PrimaryColorDark.treshop;
    }
  }

  return ThemeData(
    brightness: Brightness.dark,
    backgroundColor : ColorDark.background,
    cardColor: ColorDark.card,
    disabledColor: ColorDark.disabledButton,
    errorColor: ColorDark.error,
    hintColor: ColorDark.fontSubtitle,
    indicatorColor: primaryDark(theme.themeUIKit),
    primaryIconTheme: const IconThemeData(
      color: ColorDark.fontTitle,
    ),
    primaryColor: primaryDark(theme.themeUIKit),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryDark(theme.themeUIKit),
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
