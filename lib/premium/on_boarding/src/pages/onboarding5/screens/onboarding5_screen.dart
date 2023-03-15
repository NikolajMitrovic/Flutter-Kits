part of '../onboarding5_page.dart';

class OnBoarding5Screen extends StatefulWidget {
  const OnBoarding5Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding5Screen> createState() => _OnBoarding5ScreenState();
}

class _OnBoarding5ScreenState extends State<OnBoarding5Screen> {
  PageController? _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 25,
            bottom: 250,
            child: PageView.builder(
              controller: _controller,
              itemCount: OnBoardingList.onBoarding5List(context).length,
              onPageChanged: (v) {
                setState(() {
                  _currentIndex = v;
                });
              },
              itemBuilder: (context, index) {
                final onboarding =
                    OnBoardingList.onBoarding5List(context)[index];
                return SvgPicture.asset(
                  onboarding.image!,
                  fit: BoxFit.fitWidth,
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            height: 250,
            child: Column(
              children: [
                CustomDotsIndicator(
                  color: CustomColor.ultraMarineBlue,
                  dotsCount: OnBoardingList.onBoarding5List(context),
                  position: _currentIndex,
                ),
                const SizedBox(height: Const.space8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(Const.margin),
                    decoration: const BoxDecoration(
                      color: CustomColor.ultraMarineBlue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Const.radius25),
                        topLeft: Radius.circular(Const.radius25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShakeTransition(
                          duration: const Duration(milliseconds: 800),
                          child: AutoSizeText(
                            OnBoardingList.onBoarding5List(
                                    context)[_currentIndex]
                                .title!,
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: Const.space8),
                        ShakeTransition(
                          duration: const Duration(milliseconds: 900),
                          child: AutoSizeText(
                            OnBoardingList.onBoarding5List(
                                    context)[_currentIndex]
                                .subtitle!,
                            style: theme.textTheme.titleMedium?.copyWith(
                                // color: ColorDark.fontSubtitle,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        CustomElevatedButton(
                          onTap: () {
                            showToast(
                                msg: AppLocalizations.of(context)!
                                    .get_started_button_clicked);
                          },
                          width: Screens.width(context) / 2,
                          label: AppLocalizations.of(context)!.get_started,
                          color: CustomColor.darkOrange,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
