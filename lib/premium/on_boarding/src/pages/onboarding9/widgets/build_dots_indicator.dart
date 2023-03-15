part of '../onboarding9_page.dart';


class _BuildDotsIndicator extends StatelessWidget {

  final int? currentIndex;

  const _BuildDotsIndicator({Key? key, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Positioned(
      bottom: Screens.heigth(context) / 5,
      left: 0,
      right: 0,
      child: ShakeTransition(
        duration:const Duration(milliseconds: 200),
        child: CustomDotsIndicator(
          dotsCount: OnBoardingList.onBoardingList(context),
          position: currentIndex,
          color: const Color(0xFF4169E1)
        ),
      ),
    );
  }
}
