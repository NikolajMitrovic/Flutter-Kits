part of '../on_boarding_page.dart';

class FoodiyOnBoardingScreen extends StatefulWidget {
  const FoodiyOnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<FoodiyOnBoardingScreen> createState() => _FoodiyOnBoardingScreenState();
}

class _FoodiyOnBoardingScreenState extends State<FoodiyOnBoardingScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  List<OnBoardingModel> _onBoardingList(BuildContext context) => [
        OnBoardingModel(
          title: AppLocalizations.of(context)!.fresh_food,
          subtitle: AppLocalizations.of(context)!
              .we_make_it_simple_to_find_the_food_you_crave_enter_your_address_and_let_us_do_the_rest,
          image: Const.onBoardingImage1,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.fast_delivery,
          subtitle: AppLocalizations.of(context)!
              .when_you_order_we_will_hook_you_up_with_exclusive_coupons_specials_and_rewards,
          image: Const.onBoardingImage2,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.easy_payment,
          subtitle: AppLocalizations.of(context)!
              .we_make_food_ordering_fast_simple_and_free_no_matter_if_you_order_online_or_cash,
          image: Const.onBoardingImage3,
        ),
      ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const _BuildSkipButton(),
          _BuildBody(
            controller: _pageController,
            itemList: _onBoardingList(context),
            onPageChanged: (v) {
              setState(() {
                _currentIndex = v;
              });
            },
          ),
          _BuildDotsIndicator(
            itemList: _onBoardingList(context),
            position: _currentIndex.toDouble(),
          ),
          _BuildGetStartedButton(
            onGetStartedTap: () {
              if (_currentIndex == 2) {
                Get.offAllNamed<dynamic>(FoodiyRoutes.signin);
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
