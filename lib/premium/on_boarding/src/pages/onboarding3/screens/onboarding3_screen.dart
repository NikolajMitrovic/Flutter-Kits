part of '../onboarding3_page.dart';

class OnBoarding3Screen extends StatefulWidget {
  const OnBoarding3Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding3Screen> createState() => _OnBoarding3ScreenState();
}

class _OnBoarding3ScreenState extends State<OnBoarding3Screen> {
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
            itemCount: OnBoardingList.onBoarding3List(context),
          ),
          _FooterSection(
            currentIndex: _currentIndex,
            primaryColor: CustomColor.blueberry,
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
