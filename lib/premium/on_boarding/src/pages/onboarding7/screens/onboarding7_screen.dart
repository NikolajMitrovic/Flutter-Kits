part of '../onboarding7_page.dart';

class OnBoarding7Screen extends StatefulWidget {
  const OnBoarding7Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding7Screen> createState() => _OnBoarding7ScreenState();
}

class _OnBoarding7ScreenState extends State<OnBoarding7Screen> {
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
              setState(() {
                _currentIndex = v;
              });
            },
          ),
          _FooterSection(
            cardColor: CustomColor.rhino,
            currentIndex: _currentIndex,
            primaryColor: CustomColor.oysterBay,
            onNextTap: () {
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
        ],
      ),
    );
  }
}
