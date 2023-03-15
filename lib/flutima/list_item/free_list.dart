import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/flutima/helpers/uikit_model.dart';

List<UIKitModels> freeList(BuildContext context) => [
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
    ];
