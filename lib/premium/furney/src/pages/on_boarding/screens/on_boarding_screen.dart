part of '../on_boarding_page.dart';

class FurneyOnBoardingScreen extends StatefulWidget {
  const FurneyOnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<FurneyOnBoardingScreen> createState() => _FurneyOnBoardingScreenState();
}

class _FurneyOnBoardingScreenState extends State<FurneyOnBoardingScreen> {
  int? _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BodySection(onPageChanged: (v) => setState(() => _currentIndex = v)),
          _BuildDotsIndicator(currentIndex: _currentIndex),
          _BuildStartButton(index: _currentIndex),
          _BuildSkipButton(index: _currentIndex),
        ],
      ),
    );
  }
}
