part of '../onboarding8_page.dart';

class OnBoarding8Screen extends StatefulWidget {
  const OnBoarding8Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding8Screen> createState() => _OnBoarding8ScreenState();
}

class _OnBoarding8ScreenState extends State<OnBoarding8Screen> {
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
            logInTap: () {
              showToast(
                  msg: AppLocalizations.of(context)!.log_in_button_clicked);
            },
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
