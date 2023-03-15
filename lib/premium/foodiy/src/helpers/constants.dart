import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';

class Const {
  static const String cod = 'assets/images/foodiy_cod.png';
  static const String empty = 'assets/images/foodiy_empty.png';
  static const String facebook = 'assets/images/foodiy_facebook_sign_in.png';
  static const String google = 'assets/images/foodiy_google_sign_in.png';
  static const String illustration1 = 'assets/images/foodiy_illustration1.png';
  static const String illustration2 = 'assets/images/foodiy_illustration2.png';
  static const String email = 'assets/images/foodiy_email.png';
  static const String localeUS = 'en-US';
  static const String logo = 'assets/images/foodiy_foodbeast.png';
  static const String mockProfileImage = 'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg';
  static const String onBoardingImage1 = 'assets/images/foodiy_onboarding1.png';
  static const String onBoardingImage2 = 'assets/images/foodiy_onboarding2.png';
  static const String onBoardingImage3 = 'assets/images/foodiy_onboarding3.png';
  static const String paypal = 'assets/images/foodiy_paypal.png';
  static const String wallpaper = 'assets/images/foodiy_wallpaper.jpg';
  static const double margin = 18;
  static const double radius = 12;
}

Future showToast(
    {required String msg, Color? backgroundColor , Color? textColor}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: ToastGravity.CENTER,
    backgroundColor : Colors.grey.withOpacity(.5),
    textColor: ColorLight.fontTitle,
  );
}
