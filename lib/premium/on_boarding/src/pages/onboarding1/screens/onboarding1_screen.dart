part of '../onboarding1_page.dart';

class OnBoarding1Screen extends StatefulWidget {
  const OnBoarding1Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding1Screen> createState() => _OnBoarding1ScreenState();
}

class _OnBoarding1ScreenState extends State<OnBoarding1Screen> {
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
            onPageChanged: (v) => setState(() => _currentIndex = v),
            itemCount: OnBoardingList.onBoarding1List(context),
          ),
          const _BuildSkipButton(),
          _FooterSection(
            currentIndex: _currentIndex,
            primaryColor: CustomColor.chambray,
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
