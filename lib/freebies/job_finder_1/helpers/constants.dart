import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBlack = Color(0xFF21202A);
const kBlackAccent = Color(0xFF3A3A3A);
const kSilver = Color(0xFFF6F6F6);
const kOrange = Color(0xFFFA5805);

TextStyle kPageTitleStyle = GoogleFonts.questrial(
  fontSize: 23,
  fontWeight: FontWeight.w500,
  color: kBlack,
  wordSpacing: 2.5,
);
TextStyle kTitleStyle = GoogleFonts.questrial(
  fontSize: 16,
  color: kBlack,
  fontWeight: FontWeight.w400,
);
TextStyle kSubtitleStyle = GoogleFonts.questrial(
  fontSize: 14,
  color: kBlack,
);

class CustomImages{
  static const String nike = 'assets/images/job_finder_1_nike.png';
  static const String apple = 'assets/images/job_finder_1_apple.png';
  static const String monobank = 'assets/images/job_finder_1_monobank.jpg';
  static const String soundcloud = 'assets/images/job_finder_1_soundcloud.png';
  static const String uber = 'assets/images/job_finder_1_uber.png';
  static const String youtube = 'assets/images/job_finder_1_youtube.png';
}

class CustomIcons{
  static const String drawer = 'assets/icons/job_finder_1_drawer.svg';
  static const String user = 'assets/icons/job_finder_1_user.svg'; 
}
