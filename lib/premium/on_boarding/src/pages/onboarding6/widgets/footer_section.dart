part of '../onboarding6_page.dart';

class _FooterSection extends StatelessWidget {
  final Color? primaryColor;
  final int? currentIndex;
  final PageController? controller;
  final Color buttonColor;
  final VoidCallback? onSkipTap;
  final VoidCallback? onGetStartedTap;

  const _FooterSection({
    Key? key,
    this.primaryColor,
    this.currentIndex,
    this.controller,
    required this.buttonColor,
    this.onSkipTap,
    this.onGetStartedTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      right: 0,
      height: 250,
      child: Container(
        width: Screens.width(context),
        padding: const EdgeInsets.all(Const.margin),
        decoration: BoxDecoration(
          color: primaryColor,
        ),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (currentIndex == 2)
              CustomTextButton(
                label: '',
                onTap: () {},
              )
            else
              CustomTextButton(
                label: AppLocalizations.of(context)!.skip,
                textColor: Colors.white,
                onTap: onSkipTap,
              ),
            const SizedBox(width: Const.space15),
            Expanded(
              child: CustomDotsIndicator(
                color: Colors.white,
                dotsCount: OnBoardingList.onBoarding5List(context),
                position: currentIndex,
                unActiveColor: ColorLight.disabledButton,
              ),
            ),
            const SizedBox(width: Const.space25),
            Expanded(
              child: CustomElevatedButton(
                onTap: onGetStartedTap,
                label: AppLocalizations.of(context)!.get_started,
                color: buttonColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
