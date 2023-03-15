part of '../onboarding2_page.dart';

class OnBoarding2Screen extends StatefulWidget {
  const OnBoarding2Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding2Screen> createState() => _OnBoarding2ScreenState();
}

class _OnBoarding2ScreenState extends State<OnBoarding2Screen> {
  PageController? _controller;
  int _currentIndex = 0; 

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BodySection(
            controller: _controller,
            primaryColor: CustomColor.topaz,
            onPageChanged: (v) => setState(() => _currentIndex = v),
            itemCount: OnBoardingList.onBoarding2List(context),
          ),
          _BuildSkipButton(currentIndex: _currentIndex),
          _FooterSection(
            currentIndex: _currentIndex,
            primaryColor: CustomColor.topaz,
            onNextTap: () {
              _controller?.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
          ),
        ],
      ),
    );
  }
}
