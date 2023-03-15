import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/helpers/colors.dart';


ThemeData themeLight(BuildContext context) {
  return ThemeData(
    appBarTheme: AppBarTheme(color: kBackgroundLightColor, elevation: 0),
    primaryColor: kPrimaryColor,
    primaryColorLight: kBackgroundDarkColor,
    errorColor: kErrorLightColor,
    hintColor: kSecondaryLightColor,
    cardColor: kCardLightColor,
    brightness: Brightness.light,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
    unselectedWidgetColor: kSecondaryLightColor,
    scaffoldBackgroundColor : kBackgroundLightColor,
    backgroundColor : kBackgroundLightColor,
    iconTheme: IconThemeData(color: kBackgroundDarkColor),
    primaryIconTheme: IconThemeData(color: kBackgroundDarkColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    indicatorColor: kPrimaryColor,
    buttonTheme: ButtonThemeData(
      minWidth: 120,
      height: 45,
      buttonColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      hintStyle: GoogleFonts.poppins(
        color: kSecondaryLightColor,
        fontSize: 12,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: kSecondaryLightColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: kPrimaryColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: kErrorLightColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: kErrorLightColor,
        ),
      ),
      errorStyle: GoogleFonts.poppins(
        color: kErrorDarkColor,
        fontSize: 12,
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: kPrimaryLightColor,
        fontSize: 14,
      ),
      titleMedium: GoogleFonts.poppins(
        color: kSecondaryLightColor,
        fontSize: 14,
      ),
      titleSmall: GoogleFonts.poppins(
        color: kSecondaryLightColor,
        fontSize: 12,
      ),
      button: GoogleFonts.roboto(
        color: kPrimaryDarkColor,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

// Dark Theme
ThemeData themeDark(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    primaryColorLight: kBackgroundLightColor,
    hintColor: kSecondaryDarkColor,
    cardColor: kCardDarkColor,
    errorColor: kErrorDarkColor,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
    brightness: Brightness.dark,
    indicatorColor: kPrimaryColor,
    unselectedWidgetColor: kSecondaryDarkColor,
    scaffoldBackgroundColor : kBackgroundDarkColor,
    appBarTheme: AppBarTheme(color: kBackgroundDarkColor, elevation: 0),
    backgroundColor : kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kPrimaryColor),
    primaryIconTheme: IconThemeData(color: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(
      minWidth: 120,
      height: 45,
      buttonColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      hintStyle: GoogleFonts.poppins(
        color: kSecondaryDarkColor,
        fontSize: 12,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: kSecondaryDarkColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: kPrimaryColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: kErrorDarkColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: kErrorDarkColor,
        ),
      ),
      errorMaxLines: 1,
      helperStyle: GoogleFonts.poppins(
        color: kSecondaryDarkColor,
        fontSize: 10,
      ),
      errorStyle: GoogleFonts.poppins(
        color: kErrorDarkColor,
        fontSize: 10,
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: kPrimaryDarkColor,
        fontSize: 14,
      ),
      titleMedium: GoogleFonts.poppins(
        color: kSecondaryDarkColor,
        fontSize: 14,
      ),
      titleSmall: GoogleFonts.poppins(
        color: kSecondaryDarkColor,
        fontSize: 12,
      ),
      button: GoogleFonts.roboto(
        color: kPrimaryDarkColor,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

AppBarTheme appBarTheme = const AppBarTheme(color: Colors.transparent, elevation: 0);
