
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/barbera/src/helpers/constans.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/on_boarding_model.dart';

List<OnBoardingModel> onBoardingMockList(BuildContext context) => [
  OnBoardingModel(
    image: Assets.onBoarding1,
    title: AppLocalizations.of(context)!.find_and_book_service,
    subtitle: AppLocalizations.of(context)!.find_and_book_barber_beauty_salon_spa_services_anywhere_anytime,
  ),
  OnBoardingModel(
    image: Assets.onBoarding2,
    title: AppLocalizations.of(context)!.style_that_fit_your_lifestyle,
    subtitle: AppLocalizations.of(context)!.choose_our_makeup_special_offer_price_package_that_fit_your_lifestyle,
  ),
  OnBoardingModel(
    image: Assets.onBoarding3,
    title: AppLocalizations.of(context)!.we_provide_best_services_ever,
    subtitle: AppLocalizations.of(context)!.we_will_serve_you_well_so_that_you_remain_handsome_and_stylish,
  ),
];
