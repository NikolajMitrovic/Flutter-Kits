import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBackgroundLight = Color(0xFFF6F6F6);
const kCardLight = Color(0xFFFFFFFF);

const kBackgroundDark = Color(0xFF30314A);
const kCardDark = Color(0xFF1F203B);

const kGreyColor = Color(0xFFEBEDF6);

TextStyle kTitleStyle = GoogleFonts.comfortaa(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: kCardDark,
);
TextStyle kSubtitleStyle = GoogleFonts.comfortaa(
  fontSize: 15,
  color: Colors.black45,
);
TextStyle kPriceTitleStyle = GoogleFonts.comfortaa(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: Colors.pink,
);
TextStyle kPriceSubtitleStyle = GoogleFonts.comfortaa(
  fontSize: 12,
  color: Colors.pink,
  decoration: TextDecoration.lineThrough,
);

class CustomIcons {
  static const String birthdaycake = 'assets/icons/bakery_store_1_birthdaycake.svg';
  static const String birthday = 'assets/icons/bakery_store_1_birthday.svg';
  static const String bread = 'assets/icons/bakery_store_1_bread.svg';
  static const String bread1 = 'assets/icons/bakery_store_1_bread1.svg';
  static const String dessert = 'assets/icons/bakery_store_1_dessert.svg';
  static const String dessert1 = 'assets/icons/bakery_store_1_dessert1.svg';
  static const String donut = 'assets/icons/bakery_store_1_donut.svg';
  static const String sweet = 'assets/icons/bakery_store_1_sweet.svg';
}
