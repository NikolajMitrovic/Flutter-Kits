import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/coffiy/src/helpers/constants.dart';

class OnBoardingModel {
  final String? image;
  final String? title;
  final String? subtitle;

  OnBoardingModel({this.image, this.title, this.subtitle});
}

List<OnBoardingModel> onBoardingList(BuildContext context) => [
  OnBoardingModel(
    image: CustomIcons.coffeeMachine,
    title: AppLocalizations.of(context)!.making_your_days_with_our_coffee,
    subtitle: AppLocalizations.of(context)!.the_best_grain_the_finest_roast_the_most_powerful_flavor,
  ),
  OnBoardingModel(
    image: CustomIcons.debitCard,
    title: AppLocalizations.of(context)!.easy_payment,
    subtitle: AppLocalizations.of(context)!.process_payment_for_your_purchased_coffee_with_your_lovely_payment_method,
  ),
  OnBoardingModel(
    image: CustomIcons.deliveryMan,
    title: AppLocalizations.of(context)!.fast_delivery,
    subtitle: AppLocalizations.of(context)!.with_our_dedicated_delivery_partners_you_ll_get_your_coffee_fast,
  ),
];
