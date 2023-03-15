part of '../on_boarding_page.dart';

class BarberaOnBoardingScreen extends StatefulWidget {
  const BarberaOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<BarberaOnBoardingScreen> createState() => _BarberaOnBoardingScreenState();
}

class _BarberaOnBoardingScreenState extends State<BarberaOnBoardingScreen> {
  late PageController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BuildBody(
            controller: _controller,
            onPageChanged: (v) {
              setState(() => _currentIndex = v);
            },
          ),
          const _BuildSkipButton(),
          _BuildFooter(
            currentIndex: _currentIndex,
            pageController: _controller,
          )
        ],
      ),
    );
  }
}
