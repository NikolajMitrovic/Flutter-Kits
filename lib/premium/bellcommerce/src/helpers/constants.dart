import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future showToast(
    {required String msg, Color? backgroundColor , Color? textColor}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: ToastGravity.CENTER,
    backgroundColor : backgroundColor ,
    textColor: textColor ?? Colors.white,
  );
}

class Const {
  static const double margin = 18;
  static const double radius = 12;
  static const double space5 = 5;
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space15 = 15;
  static const double space25 = 25;
}


class Illustrations {
  static const String forgotPassword = 'assets/illustrations/bellcommerce_forgot_password.svg';
  static const String forgotPasswordSuccess = 'assets/illustrations/bellcommerce_forgot_password_success.svg';
  static const String onBoarding1 = 'assets/illustrations/bellcommerce_on_boarding_1.png';
  static const String onBoarding2 = 'assets/illustrations/bellcommerce_on_boarding_2.png';
  static const String onBoarding3 = 'assets/illustrations/bellcommerce_on_boarding_3.png';
}

class Assets {
  static const String google = 'assets/icons/bellcommerce_google.svg';
  static const String facebook = 'assets/icons/bellcommerce_facebook.svg';

  static const String shirt = 'assets/icons/bellcommerce_tshirt.png';
  static const String dress = 'assets/icons/bellcommerce_dress.png';
  static const String bag = 'assets/icons/bellcommerce_bag.png';
  static const String manPants = 'assets/icons/bellcommerce_manpants.png';
  static const String manShoes = 'assets/icons/bellcommerce_manshoes.png';
  static const String manUnderwear = 'assets/icons/bellcommerce_manunderwear.png';
  static const String tShirt = 'assets/icons/bellcommerce_tshirt.png';
  static const String womanBag = 'assets/icons/bellcommerce_womanbag.png';
  static const String womanPants = 'assets/icons/bellcommerce_womanpants.png';
  static const String womanShoes = 'assets/icons/bellcommerce_womanshoes.png';
  static const String womanTshirt = 'assets/icons/bellcommerce_womantshirt.png';
  static const String bikini = 'assets/icons/bellcommerce_bikini.png';
  static const String skirt = 'assets/icons/bellcommerce_skirt.png';


  static const String debit = 'assets/icons/bellcommerce_debit.svg';
  static const String activity = 'assets/icons/bellcommerce_activity.svg';
  static const String alert = 'assets/icons/bellcommerce_alert.svg';
  static const String bank = 'assets/icons/bellcommerce_bank.svg';
  static const String clothes = 'assets/icons/bellcommerce_clothes.svg';
  static const String date = 'assets/icons/bellcommerce_date.png';
  static const String done = 'assets/icons/bellcommerce_done.svg';
  static const String feed = 'assets/icons/bellcommerce_feed.svg';
  static const String gender = 'assets/icons/bellcommerce_gender.png';
  static const String location = 'assets/icons/bellcommerce_location.svg';
  static const String logo = 'assets/images/bellcommerce_logo.png';
  static const String menu = 'assets/icons/bellcommerce_menu.svg';
  static const String message = 'assets/icons/bellcommerce_message.png';
  static const String notification = 'assets/icons/bellcommerce_notification.svg';
  static const String offer = 'assets/icons/bellcommerce_offer.svg';
  static const String order = 'assets/icons/bellcommerce_order.svg';
  static const String paypal = 'assets/icons/bellcommerce_paypal.svg';
  static const String phone = 'assets/icons/bellcommerce_phone.svg';
  static const String profile = 'assets/icons/bellcommerce_profile.svg';
  static const String success = 'assets/icons/bellcommerce_success.svg';
}
