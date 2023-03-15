import 'package:flutter/cupertino.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/flutima/helpers/uikit_model.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

List<UIKitModels> popularList(BuildContext context) => [
      UIKitModels(
        name: 'Barbera | Barbershop UI Kit',
        description:
            'Barbera | Barbershop UI Kit is an application for finding and barber appointments at the nearest barbershop. It has 50+ Screens which includes all the features and is designed as much as possible so that users can use the application easily.',
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
            value: '50+ Screens',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: 'Dark Mode',
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: 'Multi-Languages',
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.barbera;
          Get.toNamed<dynamic>(UIKitRoutes.barbera);
        },
      ),
      UIKitModels(
        name: 'Bellcommerce | eCommerce UI Kit',
        description:
            'Bellcommerce is an e-commerce application that is used by people to sell all kinds of categories of goods. Bellcommerce is neatly designed, clean and modern and has 27+ Screens',
        type: TypeScreen.uikit,
        isPremium: true,
        purchaseLink:
            'https://codecanyon.net/item/flutter-ui-master-kit/34146810',
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
            value: '27+ Screens',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: 'Dark Mode',
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: 'Multi-Languages',
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.bellcommerce;
          Get.toNamed<dynamic>(UIKitRoutes.bellcommerce);
        },
      ),
      UIKitModels(
        name: 'Lestate | Real Estate UI Kit',
        description:
            'Lestate is a unique Real Estate Web UI Kit with detailed criteria and input fields based on user feedback from Real Estate Agents. Be a Pro.. get a head start on the User Experience. Has 30+ Screens, clean and modern',
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
            value: '30+ Screens',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: 'Dark Mode',
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: 'Multi-Languages',
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.lestate;
          Get.toNamed<dynamic>(UIKitRoutes.lestate);
        },
      ),
      UIKitModels(
        name: 'Treshop | eCommerce UI Kit',
        description: 'TRESHOP | Flutter eCommerce UI Kit is a nicely designed and developed mobile application UI kit developed using Flutter. Flutter is an open-source mobile application development SDK created by Google and used to develop applications for Android and iOS.',
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
            value: '35+ Screens',
          ),
          FeaturesModel(
            icon: FeatherIcons.moon,
            value: 'Dark Mode',
          ),
          FeaturesModel(
            icon: FeatherIcons.globe,
            value: 'Multi-Languages',
          ),
        ],
        navigateDemo: () {
          context.read<ThemeProvider>().themeUIKit = ThemeUIKit.treshop;
          Get.toNamed<dynamic>(UIKitRoutes.treshop);
        },
      ),
      
    ];
