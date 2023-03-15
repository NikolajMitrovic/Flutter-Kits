part of '../movie_page.dart';

ThemeData _themeDark(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor : const Color(0xFF1D2027),
    backgroundColor : const Color(0xFF1D2027),
    primaryColor: const Color(0xFF546EE5),
    appBarTheme: const AppBarTheme(
      backgroundColor : Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    primaryIconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: const Color(0xFFB2B5BB),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: const Color(0xFFB2B5BB),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      titleMedium: GoogleFonts.poppins(
        color: const Color(0xFF696D74),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      titleSmall: GoogleFonts.poppins(
        color: const Color(0xFF696D74),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
    ),
  );
}
