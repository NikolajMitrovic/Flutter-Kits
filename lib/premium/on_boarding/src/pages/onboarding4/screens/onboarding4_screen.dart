part of '../onboarding4_page.dart';

class OnBoarding4Screen extends StatefulWidget {
  const OnBoarding4Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding4Screen> createState() => _OnBoarding4ScreenState();
}

class _OnBoarding4ScreenState extends State<OnBoarding4Screen> {
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
            onPageChanged: (v) {
              setState(() => _currentIndex = v);
            },
          ),
          _FooterSection(
            primaryColor: Colors.black,
            currentIndex: _currentIndex,
            onGetStartedTap: (_currentIndex != 2)
                ? () {}
                : () {
                    showToast(
                      msg: AppLocalizations.of(context)!
                          .get_started_button_clicked,
                    );
                  },
          ),
        ],
      ),
    );
  }
}
