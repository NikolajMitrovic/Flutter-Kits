part of '../onboarding8_page.dart';

class _FooterSection extends StatelessWidget {
  final Color cardColor;
  final int currentIndex;
  final Color primaryColor;
  final VoidCallback? onNextTap;
  final VoidCallback? logInTap;

  const _FooterSection({
    Key? key,
    required this.cardColor,
    required this.currentIndex,
    required this.primaryColor,
    this.onNextTap,
    this.logInTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      left: 0,
      bottom: 0,
      right: 0,
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(Const.margin),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(Const.radius25),
                  topLeft: Radius.circular(Const.radius25),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: Const.space12),
                  ShakeTransition(
                    duration: const Duration(milliseconds: 800),
                    child: AutoSizeText(
                      OnBoardingList.onBoarding8List(context)[currentIndex]
                          .title!,
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontSize: 22,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(),
                  CustomDotsIndicator(
                    color: primaryColor,
                    dotsCount: OnBoardingList.onBoarding8List(
                      context,
                    ),
                    type: DotsType.circle,
                    position: currentIndex,
                  ),
                  const Spacer(),
                  CustomElevatedButton(
                    onTap: onNextTap,
                    label: AppLocalizations.of(context)!.get_started,
                    color: CustomColor.salmonPink,
                  ),
                  const SizedBox(height: Const.space8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AutoSizeText(
                        AppLocalizations.of(context)!.already_have_an_account,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: ColorDark.fontSubtitle,
                        ),
                      ),
                      CustomTextButton(
                        label: AppLocalizations.of(context)!.log_in,
                        onTap: logInTap,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
