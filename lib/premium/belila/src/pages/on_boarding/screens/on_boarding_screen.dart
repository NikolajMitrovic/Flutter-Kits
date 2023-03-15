part of '../on_boarding_page.dart';

class BelilaOnBoardingScreen extends StatefulWidget {
  const BelilaOnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<BelilaOnBoardingScreen> createState() => _BelilaOnBoardingScreenState();
}

class _BelilaOnBoardingScreenState extends State<BelilaOnBoardingScreen> {
  int _currentIndex = 0;
  PageController? _pageController;
  bool _appearText = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BuildSkipButton(
            onSkipTap: onSkipTap,
            currentIndex: _currentIndex,
          ),
          _BodySection(
            itemCount: onBoardingList(context),
            controller: _pageController,
            onPageChanged: (val) {
              setState(() => _currentIndex = val);
            },
          ),
          _FooterSection(
            currentIndex: _currentIndex,
            list: onBoardingList(context),
            onNextTap: onStartTap,
            onEnd: () {
              if (_currentIndex < 2) {
                setState(() {
                  _appearText = false;
                });
              } else {
                setState(() {
                  _appearText = true;
                });
              }
            },
            appearText: _appearText,
          ),
        ],
      ),
    );
  }

  void onStartTap()  {
    if (_currentIndex == 2) {
       Get.offAllNamed<dynamic>(BelilaRoutes.signIn);
    } else {
       _pageController!.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void onSkipTap()  {
     Get.offAllNamed<dynamic>(BelilaRoutes.signIn);
  }
}
