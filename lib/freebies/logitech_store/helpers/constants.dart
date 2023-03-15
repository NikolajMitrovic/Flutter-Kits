import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

const kBlueColor = Color(0xFF00B8FC);
const kOrangeColor = Color(0xFFFF5134);
const kBlackColor = Color(0xFF3A3A3A);
const kBlack2Color = Color(0xFF353535);
const kWhiteColor = Color(0xFFF7FAFE);

final Shader linearGradient = const LinearGradient(
  colors: <Color>[kWhiteColor, kBlackColor],
).createShader(const Rect.fromLTWH(0, 0, 200, 70));

TextStyle kH1Style = GoogleFonts.poppins(
  color: kBlackColor,
  fontWeight: FontWeight.bold,
  fontSize: 23,
  wordSpacing: 5,
);
TextStyle kH2Style = GoogleFonts.poppins(
  color: kBlackColor,
  fontWeight: FontWeight.bold,
  fontSize: 19,
);
TextStyle kH3Style = GoogleFonts.poppins(
  color: kBlueColor,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

TextStyle kH2SubtitleStyle = GoogleFonts.poppins(
  color: kOrangeColor,
  fontSize: 15,
);

TextStyle kTitleStyle = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  foreground: Paint()..shader = linearGradient,
);
TextStyle kSubtitleStyle = GoogleFonts.poppins(
  fontSize: 17,
  color: kWhiteColor,
);

TextStyle kCategoryTextStyle = GoogleFonts.poppins(
  fontSize: 11,
  color: kBlackColor,
);

TextStyle kDescriptionStyle = GoogleFonts.poppins(
  fontSize: 16,
  height: 1.5,
  color: const Color(0xFFB0B5C1),
);

class CustomIcons {
  static const String mice = 'assets/icons/logitech_store_mouse.svg';
  static const String keyboard = 'assets/icons/logitech_store_keyboard.svg';
  static const String audio = 'assets/icons/logitech_store_audio.svg';
  static const String gamepad = 'assets/icons/logitech_store_gamepad.svg';
  static const String drawer = 'assets/icons/logitech_store_drawer.svg';
  static const String search = 'assets/icons/logitech_store_search.svg';
}
