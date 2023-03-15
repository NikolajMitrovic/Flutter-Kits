import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/flutima/helpers/uikit_model.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

List<UIKitModels> allUIList(BuildContext context) => [
  UIKitModels(
        name: 'Evite Dashboard',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/evite_app',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.evite);
        },
      ),
      UIKitModels(
        name: 'Logitech Store Dashboard',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/logitech_store_app',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.logitechStore);
        },
      ),
      UIKitModels(
        name: 'Barbershop Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/barbershop_app',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.barbershop1);
        },
      ),
      UIKitModels(
        name: 'Bakery Store Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/bakery_store_app',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.bakeryStore1);
        },
      ),
      UIKitModels(
        name: 'Job Finder Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/job_finder',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.jobFinder1);
        },
      ),
      UIKitModels(
        name: 'Doctor Consultation Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/doctor_consultant_app',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.doctorConsultation1);
        },
      ),
      UIKitModels(
        name: 'Home Rent Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/dickyrey/home_rent_services_mobile_app',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.homeRent1);
        },
      ),
      UIKitModels(
        name: 'Furniture Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/byneetdev/furneyfurnitureuikit',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.furniture1);
        },
      ),
      UIKitModels(
        name: 'Ecommerce Dashboard 1',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/byneetdev/treshop_preview',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.ecommerce1);
        },
      ),
      UIKitModels(
        name: 'Barbera | Barbershop UI Kit',
        description: AppLocalizations.of(context)!
            .barbera_barbershop_UI_Kit_is_an_application_for_finding_and_barber_appointments_at_the_nearest_barbershop_It_has_50_Screens_which_includes_all_the_features_and_is_designed_as_much_as_possible_so_that_users_can_use_the_application_easily,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/85/0b/61/850b61e7aa792319b164badb7336a50d.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/10/21/e4/1021e4a232873c31417721fb0d856202.jpg',
          'https://i.pinimg.com/originals/fd/26/da/fd26dad244cadac5f49334465ad522cc.jpg',
          'https://i.pinimg.com/originals/d0/a9/08/d0a908091ee737d8fbc8d147636dab3d.jpg',
          'https://i.pinimg.com/originals/7d/0d/0a/7d0d0a985c6eabb750912ff6b1cbabe5.jpg',
          'https://i.pinimg.com/originals/da/56/91/da5691e73e7e4ac24359f2b9cbd4645c.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '50+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.barbera;
          Get.toNamed<dynamic>(UIKitRoutes.barbera);
        },
      ),
      UIKitModels(
        name: 'Sneakers Dashboard',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/byneetdev/flutter_sneaker',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.sneaker);
        },
      ),
      UIKitModels(
        name: 'Bellcommerce | eCommerce UI Kit',
        description: AppLocalizations.of(context)!
            .bellcommerce_is_an_ecommerce_application_that_is_used_by_people_to_sell_all_kinds_of_categories_of_goods_Bellcommerce_is_neatly_designed_clean_and_modern_and_has_27_Screens,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/99/74/12/99741212c6bffb327fc3ec6f267b9f82.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/1d/08/53/1d0853bddf19dfd0b952476c14147082.jpg',
          'https://i.pinimg.com/originals/ff/d1/a8/ffd1a81b27e3d305f7e5c3cc6ee84d05.jpg',
          'https://i.pinimg.com/originals/58/d6/b1/58d6b1cf4f59b77ac2e146e276eb7d41.jpg',
          'https://i.pinimg.com/originals/f1/75/0d/f1750d42829cf496a4e8f6b69b06e720.jpg',
          'https://i.pinimg.com/originals/38/09/e3/3809e380113d667f5635636596cd8c9c.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '32+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.bellcommerce;
          Get.toNamed<dynamic>(UIKitRoutes.bellcommerce);
        },
      ),
      UIKitModels(
        name: 'Lestate | Real Estate UI Kit',
        description: AppLocalizations.of(context)!
            .lestate_is_a_unique_Real_Estate_Web_UI_Kit_with_detailed_criteria_and_input_fields_based_on_user_feedback_from_Real_Estate_Agents_Be_a_Pro_get_a_head_start_on_the_User_Experience_Has_30_Screens_clean_and_modern,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/68/fe/2f/68fe2fa4d45fd23c0e16f7eed04d86ef.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/5f/1d/dd/5f1ddd15c8534f1c5247e116f94d4f67.jpg',
          'https://i.pinimg.com/originals/1f/34/07/1f3407a70c02824428d59de995bce620.jpg',
          'https://i.pinimg.com/originals/99/aa/06/99aa06d57dc8dab45b79721cd60308d3.jpg',
          'https://i.pinimg.com/originals/be/24/c1/be24c123280602f2afab9cc7f1b905fd.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '30+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.lestate;
          Get.toNamed<dynamic>(UIKitRoutes.lestate);
        },
      ),
      UIKitModels(
        name: 'Movie Dashboard',
        type: TypeScreen.dashboard,
        isPremium: false,
        github: 'https://github.com/byneetdev/flutter_movie_1',
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: AppLocalizations.of(context)!.freebies,
          ),
        ],
        navigateDemo: () {
          Get.toNamed<dynamic>(FreebiesRoutes.movie);
        },
      ),
      UIKitModels(
        name: 'Treshop | eCommerce UI Kit',
        description: AppLocalizations.of(context)!
            .treshop_Flutter_eCommerce_UI_Kit_is_a_nicely_designed_and_developed_mobile_application_UI_kit_developed_using_Flutter_Flutter_is_an_opensource_mobile_application_development_SDK_created_by_Google_and_used_to_develop_applications_for_Android_and_iOS,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/b9/f5/7e/b9f57e7828d7cb5648aa3c8abdb76894.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/c2/a8/c8/c2a8c85294390898a0b21b6403815a74.jpg',
          'https://i.pinimg.com/originals/5a/d0/ae/5ad0aed37dc3a8e6178fc7b436112b85.jpg',
          'https://i.pinimg.com/originals/b2/02/40/b20240b3621e2355b79a3b1ea8d56f53.jpg',
          'https://i.pinimg.com/originals/09/9c/28/099c284d892498f1695cb972bf570a9c.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '35+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.treshop;
          Get.toNamed<dynamic>(UIKitRoutes.treshop);
        },
      ),
      UIKitModels(
        name: 'Foodiy | Food Market UI Kit',
        description: AppLocalizations.of(context)!
            .foodiy_is_a_Food_Delivery_App_this_app_helps_users_to_order_their_food_with_the_market_like_a_restaurant,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/8c/92/c2/8c92c217e01fad9db1e0f2e8ba48b82e.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/1a/81/f8/1a81f8f4fab404127c7d6ec52cd19f7e.jpg',
          'https://i.pinimg.com/originals/01/60/84/01608415ba31f8ce8a94fb4686cae0ab.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '18+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.foodiy;
          Get.toNamed<dynamic>(UIKitRoutes.foodiy);
        },
      ),
      UIKitModels(
        name: 'Furney | Furniture UI Kit',
        description: AppLocalizations.of(context)!
            .furney_furniture_mobile_app_UI_kit_Which_allows_users_to_order_various_quality_furniture_but_not_have_to_go_to_places_It_also_helps_users_search_for_ideas_from_other_people_to_decorate_their_homes,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/55/aa/88/55aa882e7ac9d0038ffe072e8666b2dc.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/9a/c7/68/9ac7685e1c05505447a541ee08efd33b.jpg',
          'https://i.pinimg.com/originals/8e/af/b4/8eafb4afa4cf4752080bc01820f88f65.jpg',
          'https://i.pinimg.com/originals/e4/fa/89/e4fa8994411e81d49f172efeb768a4b1.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '20+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.furney;
          Get.toNamed<dynamic>(UIKitRoutes.furney);
        },
      ),
      UIKitModels(
        name: 'Coffiy | Coffee Shop UI Kit',
        description: AppLocalizations.of(context)!
            .coffiy_Coffee_Shop_UI_Kit_app_design_project_the_design_made_for_help_your_projects_and_can_be_generate_new_idea,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/b8/dc/ec/b8dcec7807cf08cb0abaf1ed4801bafb.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/d9/7f/09/d97f096192c6e53c2eb82230c58057e3.jpg',
          'https://i.pinimg.com/originals/ab/60/f3/ab60f388fbef61d7446ba4e2451eee9b.jpg',
          'https://i.pinimg.com/originals/a6/63/a7/a663a758d48a5df3b4dfc8758c2f3db2.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '20+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.coffiy;
          Get.toNamed<dynamic>(UIKitRoutes.coffiy);
        },
      ),
      UIKitModels(
        name: 'Shuppy | eCommerce UI Kit',
        description: AppLocalizations.of(context)!
            .shuppy_is_a_premium_ecommerce_UI_Kit_focused_for_modern_luxury_elegant_products_With_over_23_screens_its_all_you_need_to_quickly_design_your_next_app_The_purpose_of_this_UI_Kit_is_to_be_an_accelerator_in_the_process_of_designing_any_user_interface_for_the_mobile_apps_it_is_designed_specifically_for_designers_developers_startups_and_agencies_that_want_to_quickly_boost_their_workflow_and_impress_the_clients,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/22/45/0f/22450fbe55ccc627cb78039ed486cb67.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/29/df/1c/29df1c948dfb4acce6cd76cc6c3a0d62.jpg',
          'https://i.pinimg.com/originals/67/92/1b/67921bc30bf1e89990380562942a7be6.jpg',
          'https://i.pinimg.com/originals/33/2c/39/332c39e8dd3ab562be4298f089b1d67c.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '23+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.shuppy;
          Get.toNamed<dynamic>(UIKitRoutes.shuppy);
        },
      ),
      UIKitModels(
        name: 'Belila | eCommerce UI Kit',
        description: AppLocalizations.of(context)!
            .belila_eCommerce_Mobile_App_UI_Kit_These_ecommerce_mobile_apps_iOS_Android_are_very_easy_to_use_I_can_easily_buy_any_product_as_per_your_choice_You_can_order_from_the_online_shop_in_your_home_We_have_come_up_with_all_kinds_of_new_products_for_both_boys_and_girls_or_anything,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/21/24/5f/21245f1283f0db68b8f38156d7136664.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/61/24/c1/6124c1fcc7129ea2b8d73e17d4ccc95e.jpg',
          'https://i.pinimg.com/originals/a5/e5/b6/a5e5b671904d7261a293064c9a95e989.jpg',
          'https://i.pinimg.com/originals/fc/7f/cd/fc7fcd406ac36da2af106bcc36b9813d.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '34+ ${AppLocalizations.of(context)!.screens}',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: AppLocalizations.of(context)!.dark_mode,
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: AppLocalizations.of(context)!.multi_language,
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.belila;
          Get.toNamed<dynamic>(UIKitRoutes.belila);
        },
      ),
      UIKitModels(
        name: 'Movlix | Movie App UI Kit',
        description: AppLocalizations.of(context)!
            .high_quality_UI_Kits_pack_of_7_Movie_Streaming_based_app_screens_which_will_help_you_develop_an_app_with_outstanding_designs,
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink: 'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
        heroImage:
            'https://i.pinimg.com/originals/64/03/a3/6403a3eece7ac209a9528eaae12fb7f6.jpg',
        detailImages: [
          'https://i.pinimg.com/originals/1c/f3/5c/1cf35c0eba261d65422c66837d64c829.jpg',
          'https://i.pinimg.com/originals/39/1e/63/391e630cd5e7be180b2c97594bc75208.jpg',
          'https://i.pinimg.com/originals/46/f3/5e/46f35e8015efddff4891a8f9ecc73c35.jpg',
        ],
        features: [
          FeaturesModel(
            icon: FeatherIcons.smartphone,
            value: '7+ Screens',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: 'Dark Mode',
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: 'Multi-Languages',
          ),
          FeaturesModel(
            icon: FeatherIcons.clock,
            value: AppLocalizations.of(context)!.lifetime_update,
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.movlix;
          Get.toNamed<dynamic>(UIKitRoutes.movlix);
        },
      ),
    ];
