part of '../onboarding4_page.dart';


class _FooterSection extends StatelessWidget {
  final Color primaryColor;
  final int currentIndex;
  final VoidCallback? onGetStartedTap;

  const _FooterSection({
    Key? key,
    required this.primaryColor,
    required this.currentIndex,
    this.onGetStartedTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned(
      left: Const.margin,
      right: Const.margin,
      top: Screens.heigth(context) / 9,
      bottom: Const.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShakeTransition(
            duration: const Duration(milliseconds: 400),
            child: CustomDotsIndicator(
              color: primaryColor,
              dotsCount: OnBoardingList.onBoarding4List(context),
              position: currentIndex,
              type: DotsType.circle,
            ),
          ),
          const SizedBox(height: Const.space25),
          ShakeTransition(
            duration: const Duration(milliseconds: 500),
            child: SizedBox(
              width: Screens.width(context) / 1.5,
              child: AutoSizeText(
                OnBoardingList.onBoarding4List(context)[currentIndex].title!,
                textAlign: TextAlign.left,
                style: theme.textTheme.displayLarge?.copyWith(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(height: Const.space15),
          ShakeTransition(
            duration: const Duration(milliseconds: 600),
            child: SizedBox(
              width: Screens.width(context) / 1.5,
              child: AutoSizeText(
                OnBoardingList.onBoarding4List(context)[currentIndex].subtitle!,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
                minFontSize: 16,
                maxLines: 2,
              ),
            ),
          ),
          const Spacer(),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: (currentIndex == 2) ? 1 : 0,
            child: CustomElevatedButton(
              onTap: onGetStartedTap,
              label: AppLocalizations.of(context)!.get_started,
              color: primaryColor,
              width: Screens.width(context),
              borderRadius: BorderRadius.circular(Const.space25),
            ),
          )
        ],
      ),
    );
  }
}
