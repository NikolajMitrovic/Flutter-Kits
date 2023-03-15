import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/furney/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/furney/src/models/on_boarding_model.dart';


class OnBoardingList {
  static List<OnBoardingModel> onBoardingList(BuildContext context) => [
    OnBoardingModel(
      image: Images.onBoarding1,
      title: AppLocalizations.of(context)!.choose_your_furniture,
      subtitle: AppLocalizations.of(context)!.there_are_1000_furniture_products_that_you_can_choose_at_will,
    ),
    OnBoardingModel(
      image: Images.onBoarding2,
      title: AppLocalizations.of(context)!.add_to_cart,
      subtitle: AppLocalizations.of(context)!.just_2_clicks_and_you_can_buy_all_the_furniture_with_home_delivery,
    ),
    OnBoardingModel(
      image: Images.onBoarding3,
      title: AppLocalizations.of(context)!.pay_by_card,
      subtitle: AppLocalizations.of(context)!.the_order_can_be_paid_by_credit_card_or_in_cash_at_the_time_of_delivery,
    ),

  ];
}
