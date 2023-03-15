part of '../onboarding1_page.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDotsIndicator(
            position: currentIndex,
            dotsCount: OnBoardingList.onBoarding1List(context),
            color: primaryColor,
            type: DotsType.circle,
          ),
          InkWell(
            onTap: onNextTap,
            borderRadius: BorderRadius.circular(Const.space25),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Const.space25),
              ),
              elevation: 5,
              child: const SizedBox(
                width: 50,
                height: 50,
                child: Icon(
                  FeatherIcons.arrowRight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
