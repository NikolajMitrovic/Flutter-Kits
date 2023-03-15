import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/models/on_boarding_model.dart';
 

class OnBoardingList {
  static const String _mockSubtitle = 'Facilisis at vero eros et accui msan et iusto odio dignissim qui blandit praesent luptatum zril delenit';
  static List<OnBoardingModel> onBoarding1List(BuildContext context) => [
        OnBoardingModel(
          image: Illustrations.onboarding_1_1,
          title: AppLocalizations.of(context)!.creative_solutions,
          subtitle:_mockSubtitle,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_1_2,
          title: AppLocalizations.of(context)!.integrated_teamwork,
          subtitle:_mockSubtitle,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_1_3,
          title: AppLocalizations.of(context)!.excellent_developer,
          subtitle:_mockSubtitle,
        ),
      ];

  static List<OnBoardingModel> onBoarding2List(BuildContext context) => [
        OnBoardingModel(
          image: Illustrations.onboarding_2_1,
          title: AppLocalizations.of(context)!.trusted_and_secure,
          subtitle:_mockSubtitle,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_2_2,
          title: AppLocalizations.of(context)!.invest_your_money,
          subtitle:_mockSubtitle,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_2_3,
          title: AppLocalizations.of(context)!.earn_and_buy,
          subtitle:_mockSubtitle,
        ),
      ];
  static List<OnBoardingModel> onBoarding3List(BuildContext context) => [
        OnBoardingModel(
          image: Illustrations.onboarding_3_1,
          title: AppLocalizations.of(context)!.when_to_buy,
          subtitle:_mockSubtitle,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_3_2,
          title: AppLocalizations.of(context)!.get_our_best_recommendation,
          subtitle:_mockSubtitle,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_3_3,
          title: AppLocalizations.of(context)!.hear_the_expert,
          subtitle:_mockSubtitle,
        ),
      ];
  static List<OnBoardingModel> onBoarding4List(BuildContext context) => [
        OnBoardingModel(
          image: Images.onboarding_4_1,
          title: AppLocalizations.of(context)!.discover_ideas_for_your_home,
          subtitle: AppLocalizations.of(context)!.many_desktop_publishing_packages_and_web_page_editors_now_use,
        ),
        OnBoardingModel(
          image: Images.onboarding_4_2,
          title: AppLocalizations.of(context)!.find_the_best_local_professionals,
          subtitle: AppLocalizations.of(context)!.our_app_lets_you_focus_on_finding_the_best_local_professionals_from_your_neighbourhood,
        ),
        OnBoardingModel(
          image: Images.onboarding_4_3,
          title: AppLocalizations.of(context)!.find_best_deal_on_furtira,
          subtitle: AppLocalizations.of(context)!.get_the_best_price_with_above_average_quality,
        ),
      ];
  static List<OnBoardingModel> onBoarding5List(BuildContext context) => [
        OnBoardingModel(
          image: Illustrations.onboarding_5_1,
          title: AppLocalizations.of(context)!.plan_a_trip,
          subtitle: AppLocalizations.of(context)!.you_can_select_the_date_and_also_We_can_help_you_by_suggesting_you_to_set_a_good_schedule,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_5_2,
          title: AppLocalizations.of(context)!.find_best_deal,
          subtitle: AppLocalizations.of(context)!.found_a_flight_that_matches_your_destination_and_schedule_book_it_instantly_in_just_a_few_taps,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_5_3,
          title: AppLocalizations.of(context)!.enjoy_your_trip,
          subtitle: AppLocalizations.of(context)!.easy_discovering_new_places_and_share_these_between_your_friends_and_travel_together,
        ),
      ];
  static List<OnBoardingModel> onBoarding6List(BuildContext context) => [
        OnBoardingModel(
          image: Illustrations.onboarding_6_1,
          title: AppLocalizations.of(context)!.edit_your_profile,
          subtitle: AppLocalizations.of(context)!.you_can_select_the_date_and_also_We_can_help_you_by_suggesting_you_to_set_a_good_schedule,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_6_2,
          title: AppLocalizations.of(context)!.upload_photos,
          subtitle: AppLocalizations.of(context)!.you_can_select_the_date_and_also_We_can_help_you_by_suggesting_you_to_set_a_good_schedule,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_6_3,
          title: AppLocalizations.of(context)!.discover_more_people,
          subtitle: AppLocalizations.of(context)!.you_can_select_the_date_and_also_We_can_help_you_by_suggesting_you_to_set_a_good_schedule,
        ),
      ];
  static List<OnBoardingModel> onBoarding7List(BuildContext context) => [
        OnBoardingModel(
          image: Illustrations.onboarding_7_1,
          title: AppLocalizations.of(context)!.discover_ideas_for_your_home,
          subtitle: AppLocalizations.of(context)!.explore_trending_and_popular_designs_for_your_home_from_our_curated_list_of_collections,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_7_2,
          title: AppLocalizations.of(context)!.find_the_best_local_professionals,
          subtitle: AppLocalizations.of(context)!.our_app_lets_you_focus_on_finding_the_best_local_professionals_from_your_neighbourhood,
        ),
        OnBoardingModel(
          image: Illustrations.onboarding_7_3,
          title: AppLocalizations.of(context)!.browse_articles_photos_and_videos,
          subtitle: AppLocalizations.of(context)!.we_recommend_stories_and_videos_based_on_your_interests_and_our_editors_picks,
        ),
      ];
  static List<OnBoardingModel> onBoarding8List(BuildContext context) => [
        OnBoardingModel(
          image: Images.onboarding_8_1,
          title: AppLocalizations.of(context)!.discover_unique_ideas_for_your_home,
        ),
        OnBoardingModel(
          image: Images.onboarding_8_2,
          title: AppLocalizations.of(context)!.find_the_best_local_professionals,
        ),
        OnBoardingModel(
          image: Images.onboarding_8_3,
          title: AppLocalizations.of(context)!.browse_articles_photos_and_videos,
        ),
      ];
  static List<OnBoardingModel> onBoardingList(BuildContext context) => [
    OnBoardingModel(
      image: Illustrations.onboarding_9_1,
      title: AppLocalizations.of(context)!.great_fashion_app,
      subtitle: AppLocalizations.of(context)!.we_have_a_100k_products_choose_your_product_from_our_ecommerce_shop,
    ),
    OnBoardingModel(
      image: Illustrations.onboarding_9_2,
      title: AppLocalizations.of(context)!.online_payment,
      subtitle: AppLocalizations.of(context)!.easy_checkout_and_safe_payment_method_trusted_by_our_customers_from_all_over_the_world,
    ),
    OnBoardingModel(
      image: Illustrations.onboarding_9_3,
      title: AppLocalizations.of(context)!.customer_services,
      subtitle: AppLocalizations.of(context)!.to_make_it_easier_for_you_to_shop_we_provide_customer_service_if_you_have_any_questions,
    ),
  ];
}
