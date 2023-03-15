part of '../onboarding7_page.dart';

class _BodySection extends StatelessWidget {
  final PageController? controller;
  final ValueChanged<int>? onPageChanged;

  const _BodySection({
    Key? key,
    this.controller,
    this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 25,
      bottom: Screens.heigth(context) / 2,
      child: PageView.builder(
        controller: controller,
        itemCount: OnBoardingList.onBoarding7List(context).length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          final onboarding = OnBoardingList.onBoarding7List(context)[index];
          return Padding(
            padding: const EdgeInsets.all(Const.margin),
            child: SvgPicture.asset(
              onboarding.image!,
              fit: BoxFit.fitWidth,
            ),
          );
        },
      ),
    );
  }
}
