import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

enum TypeScreen { uikit, onBoarding, dashboard }

class UIKitModels {
  final String? name;
  final String? description;
  final String? heroImage;
  final List<String>? detailImages;
  final bool? isPremium;
  final String? github;
  final String? purchaseLink;
  final VoidCallback? navigateDemo;
  final List<FeaturesModel>? features;
  final TypeScreen? type;

  UIKitModels({
    this.name,
    this.description,
    this.heroImage,
    this.detailImages,
    this.isPremium,
    this.github,
    this.purchaseLink,
    this.navigateDemo,
    this.features,
    this.type,
  });
}

class UIKitModel {
  final String? name;
  final int? totalScreen;
  final String? image;
  final VoidCallback? navigation;
  final TypeScreen? type;

  UIKitModel({
    this.name,
    this.totalScreen,
    this.image,
    this.navigation,
    this.type,
  });
}

class FeaturesModel {
  final IconData? icon;
  final String? value;

  FeaturesModel({this.icon, this.value});
}

List<UIKitModel> allOnboardingList(BuildContext context) => [
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 1',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding1),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 2',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding2),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 3',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding3),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 4',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding4),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 5',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding5),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 6',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding6),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 7',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding7),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 8',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding8),
      ),
      UIKitModel(
        type: TypeScreen.onBoarding,
        name: 'On boarding Style 9',
        navigation: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding9),
      ),
    ];
