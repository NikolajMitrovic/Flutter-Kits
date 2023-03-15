part of '../on_boarding_page.dart';

class BellcommerceOnBoardingScreen extends StatefulWidget {
  const BellcommerceOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceOnBoardingScreen> createState() =>
      _BellcommerceOnBoardingScreenState();
}

class _BellcommerceOnBoardingScreenState
    extends State<BellcommerceOnBoardingScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  List<OnBoardingModel> _onboardingPageList(BuildContext context) => [
        OnBoardingModel(
          title: AppLocalizations.of(context)!.product,
          subtitle: AppLocalizations.of(context)!
              .select_different_products_the_freedom_is_yours,
          image: Illustrations.onBoarding1,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.easy,
          subtitle: AppLocalizations.of(context)!
              .pay_for_the_products_you_buy_safely_and_easly,
          image: Illustrations.onBoarding2,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.fast,
          subtitle: AppLocalizations.of(context)!
              .super_fast_delivery_right_at_your_door,
          image: Illustrations.onBoarding3,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BuildBody(
            controller: _pageController,
            itemList: _onboardingPageList(context),
            onPageChanged: (v) {
              setState(() {
                _currentIndex = v;
              });
            },
          ),
          _BuildFooter(
            index: _currentIndex,
            dotsCount: _onboardingPageList(context).length,
            onTap: () {
              if (_currentIndex == 2) {
                Get.toNamed<dynamic>(BellcommerceRoutes.signIn);
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
          )
        ],
      ),
    );
  }
}
