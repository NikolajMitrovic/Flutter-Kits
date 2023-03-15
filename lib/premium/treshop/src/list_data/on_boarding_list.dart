import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/treshop/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/treshop/src/models/on_boarding_model.dart';
 

class OnBoardingList {
  static List<OnBoardingModel> onBoardingList(BuildContext context) => [
    OnBoardingModel(
      image: Illustrations.onBoarding1,
      title: AppLocalizations.of(context)!.great_fashion_app,
      subtitle: AppLocalizations.of(context)!.we_have_a_100kproducts_choose_your_product_from_our_ecommerce_shop,
    ),
    OnBoardingModel(
      image: Illustrations.onBoarding2,
      title: AppLocalizations.of(context)!.online_payment,
      subtitle: AppLocalizations.of(context)!.easy_checkout_and_safe_payment_method_trusted_by_our_customers_from_all_over_the_world,
    ),
    OnBoardingModel(
      image: Illustrations.onBoarding3,
      title: AppLocalizations.of(context)!.customer_services,
      subtitle: AppLocalizations.of(context)!.to_make_it_easier_for_you_to_shop_we_provide_customer_service_if_you_have_any_questions,
    ),

  ];
}
