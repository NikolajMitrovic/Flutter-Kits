part of '../onboarding6_page.dart';

class OnBoarding6Screen extends StatefulWidget {
  const OnBoarding6Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding6Screen> createState() => _OnBoarding6ScreenState();
}

class _OnBoarding6ScreenState extends State<OnBoarding6Screen> {
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
          _FooterSection(
            primaryColor: CustomColor.radicalRed,
            currentIndex: _currentIndex,
            controller: _controller,
            buttonColor: CustomColor.dark,
            onSkipTap: () {
              showToast(
                msg: AppLocalizations.of(context)!.skip_button_clicked,
              );
            },
            onGetStartedTap: () {
              switch (_currentIndex) {
                case 2:
                  showToast(
                    msg: AppLocalizations.of(context)!
                        .get_started_button_clicked,
                  );
                  break;
                default:
                  _controller?.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
              }
            },
          ),
          _BodySection(
            controller: _controller,
            currentIndex: _currentIndex,
            onPageChanged: (v) {
              setState(() {
                _currentIndex = v;
              });
            },
          ),
        ],
      ),
    );
  }
}
