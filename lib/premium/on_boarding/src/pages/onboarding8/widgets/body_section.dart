part of '../onboarding8_page.dart';

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
        itemCount: OnBoardingList.onBoarding8List(context).length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          final onboarding = OnBoardingList.onBoarding8List(context)[index];
          return Padding(
            padding: const EdgeInsets.all(Const.margin),
            child: Image.asset(
              onboarding.image!,
              fit: BoxFit.fitWidth,
            ),
          );
        },
      ),
    );
  }
}
