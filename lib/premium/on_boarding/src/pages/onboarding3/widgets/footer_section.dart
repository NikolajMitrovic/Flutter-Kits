part of '../onboarding3_page.dart';

class _FooterSection extends StatelessWidget {
  final int currentIndex;
  final Color primaryColor;
  final VoidCallback onNextTap;

  const _FooterSection({
    Key? key,
    required this.currentIndex,
    required this.primaryColor,
    required this.onNextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: Const.margin,
      left: Const.margin,
      right: Const.margin,
      child: Column(
        children: [
          CustomDotsIndicator(
            position: currentIndex,
            dotsCount: OnBoardingList.onBoarding1List(context),
            color: primaryColor,
            type: DotsType.circle,
          ),
          const SizedBox(height: Const.space25),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: (currentIndex == 0)
                ? CustomElevatedButton(
                    onTap: onNextTap,
                    label: AppLocalizations.of(context)!.get_started,
                    color: primaryColor,
                    width: Screens.width(context) / 2,
                    borderRadius: BorderRadius.circular(Const.space25),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton(
                        label: AppLocalizations.of(context)!.skip,
                        onTap: () {
                          showToast(
                            backgroundColor : primaryColor,
                            msg: AppLocalizations.of(context)!
                                .skip_button_clicked,
                          );
                        },
                      ),
                      CustomElevatedButton(
                        onTap: (currentIndex != 2)
                            ? onNextTap
                            : () {
                                showToast(
                                  backgroundColor : primaryColor,
                                  msg: AppLocalizations.of(context)!
                                      .next_button_clicked,
                                );
                              },
                        label: AppLocalizations.of(context)!.next,
                        color: primaryColor,
                        width: Screens.width(context) / 3,
                        borderRadius: BorderRadius.circular(Const.space25),
                      ),
                    ],
                  ),
          )
        ],
      ),
    );
  }
}
