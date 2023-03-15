import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/models/product_model.dart';
 

class ProductList {
  static List<ProductModel> productList = [
    ProductModel(
      title: 'OnBoarding 1',
      image:
          'https://i.pinimg.com/originals/67/4e/32/674e32d9c1a27c3bd4490ff832e178ce.png',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding1),
    ),
    ProductModel(
      title: 'OnBoarding 2',
      image:
          'https://i.pinimg.com/originals/c0/97/e8/c097e856c2c49ee3353055d777e93c72.png',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding2),
    ),
    ProductModel(
      title: 'OnBoarding 3',
      image:
          'https://i.pinimg.com/originals/c1/73/84/c17384c1d9cf2fd9b3e6dd52dadaa839.png',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding3),
    ),
    ProductModel(
      title: 'OnBoarding 4',
      image:
          'https://i.pinimg.com/originals/87/d8/28/87d8289b39990d10d1126a587349364f.png',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding4),
    ),
    ProductModel(
      title: 'OnBoarding 5',
      image:
          'https://i.pinimg.com/564x/d1/0a/05/d10a05b0e799f195ee5d1b3c5a415ee3.jpg',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding5),
    ),
    ProductModel(
      title: 'OnBoarding 6',
      image:
          'https://i.pinimg.com/564x/be/ca/ec/becaec0f2aebfe9709196b4844a6fcf1.jpg',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding6),
    ),
    ProductModel(
      title: 'OnBoarding 7',
      image:
          'https://i.pinimg.com/564x/bb/68/d7/bb68d7a8018364420e52858d1acc21da.jpg',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding7),
    ),
    ProductModel(
      title: 'OnBoarding 8',
      image:
          'https://i.pinimg.com/564x/16/a8/66/16a86610ab50e7d7d9584435efd6d8dc.jpg',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding8),
    ),
    ProductModel(
      title: 'OnBoarding 9',
      image:
          'https://i.pinimg.com/564x/d2/46/fa/d246fad3adaba71ba8ed6d05b5c10cd0.jpg',
      onTap: () => Get.toNamed<dynamic>(OnBoardingRoutes.onboarding9),
    ),
  ];
}
