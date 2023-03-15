part of '../on_boarding_page.dart';

class TreshopOnBoardingScreen extends StatefulWidget {
  const TreshopOnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<TreshopOnBoardingScreen> createState() => _TreshopOnBoardingScreenState();
}

class _TreshopOnBoardingScreenState extends State<TreshopOnBoardingScreen> {
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
