part of '../onboarding2_page.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDotsIndicator(
            position: currentIndex,
            dotsCount: OnBoardingList.onBoarding1List(context),
            color: primaryColor,
          ),
          const SizedBox(height: Const.space25),
          // (currentIndex == 2)
          // ?
          AnimatedOpacity(
            opacity: (currentIndex == 2) ? 1 : .0,
            duration: const Duration(milliseconds: 500),
            child: CustomElevatedButton(
              onTap: (currentIndex == 2)
                  ? () {
                      showToast(
                        backgroundColor : primaryColor,
                          msg: AppLocalizations.of(context)!
                              .get_started_button_clicked);
                    }
                  : () {},
              label: AppLocalizations.of(context)!.get_started,
              color: primaryColor,
            ),
          )
          // : const SizedBox(height: 45.0)
        ],
      ),
    );
  }
}
