import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kGreyColor = Color(0xFFD2D2D2);
const kBlackAccentColor = Color(0xFF767676);
const kOrangeColor = Color(0xFFFF927C);
const kOrangeAccent = Color(0xFFFFFAFA);

TextStyle kTitleStyle = GoogleFonts.archivoBlack(
  textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
);

TextStyle kSubtitleStyle = GoogleFonts.archivo(
  textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle kSelectedStyle = GoogleFonts.archivoBlack(
  textStyle: const TextStyle(
    fontSize: 18,
  ),
);

TextStyle kUnselectedStyle = GoogleFonts.archivo(
  textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle kHintStyle = GoogleFonts.archivo(
  textStyle: const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: kGreyColor,
  ),
);

TextStyle kOrangeTextStyle = GoogleFonts.archivo(
  textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: kOrangeColor,
  ),
);

class CustomIcons {
  static const String birthday = 'assets/icons/evite_birthday.svg';
  static const String gift = 'assets/icons/evite_gift.svg';
  static const String location = 'assets/icons/evite_location.svg';
  static const String menu = 'assets/icons/evite_menu.svg';
  static const String party = 'assets/icons/evite_party.svg';
  static const String search = 'assets/icons/evite_search.svg';
}

class CustomImages {
  static const String logo = 'assets/images/evite_logo.png'; 
}
