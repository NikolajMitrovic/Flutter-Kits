import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPurple = Color(0xFF6F51FF);
const kYellow = Color(0xFFFFAD03);
const kGreen = Color(0xFF22B274);
const kPink = Color(0xFFEB1E79);
const kIndigo = Color(0xFF000A45);
const kBlack = Color(0xFF4C4C4C);
const kGrey = Color(0xFFACACAC);

TextStyle kTitleStyle = GoogleFonts.roboto(
  color: kBlack,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
TextStyle kSubtitleStyle = GoogleFonts.roboto(
  color: kGrey,
  fontSize: 14,
);
TextStyle kTitleItem = GoogleFonts.roboto(
  color: kBlack,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
TextStyle kSubtitleItem = GoogleFonts.roboto(
  color: kGrey,
  fontSize: 12,
);
TextStyle kHintStyle = GoogleFonts.roboto(
  color: kGrey,
  fontSize: 12,
);

class CustomIcons {
  static const String salon = 'assets/icons/barbershop_1_saloon.svg';
  static const String haircut = 'assets/icons/barbershop_1_haircut.svg';
  static const String palor = 'assets/icons/barbershop_1_palor.svg';
  static const String shampoo = 'assets/icons/barbershop_1_shampoo.svg';
  static const String spa = 'assets/icons/barbershop_1_spa.svg';
}
