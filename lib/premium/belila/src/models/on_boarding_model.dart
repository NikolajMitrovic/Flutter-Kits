import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/constants.dart';

class OnBoardingModel {
  final String? image;
  final String? title;
  final String? subtitle;

  OnBoardingModel({this.image, this.title, this.subtitle});
}

  List<OnBoardingModel> onBoardingList(BuildContext context) => [
        OnBoardingModel(
          title: AppLocalizations.of(context)!.welcome_to_belila,
          subtitle: AppLocalizations.of(context)!.find_your_favorite_product_that_you_want_to_buy_easily,
          image: Illustrations.onBoarding1,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.fast_delivery_and_secure,
          subtitle: AppLocalizations.of(context)!.your_product_is_delivered_to_your_home_fast_and_secure,
          image: Illustrations.onBoarding2,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.easy_payment_for_you,
          subtitle: AppLocalizations.of(context)!.pay_for_the_products_you_buy_safely_and_easily,
          image: Illustrations.onBoarding3,
        ),
      ];
