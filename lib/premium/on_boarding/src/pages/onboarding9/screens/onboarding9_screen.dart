part of '../onboarding9_page.dart';

class OnBoarding9Screen extends StatefulWidget {
  const OnBoarding9Screen({ Key? key }) : super(key: key);

  @override
  State<OnBoarding9Screen> createState() => _OnBoarding9ScreenState();
}

class _OnBoarding9ScreenState extends State<OnBoarding9Screen> {
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
