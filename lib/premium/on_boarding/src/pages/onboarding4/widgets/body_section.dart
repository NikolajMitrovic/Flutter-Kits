part of '../onboarding4_page.dart';


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
    return PageView.builder(
      controller: controller,
      itemCount: OnBoardingList.onBoarding4List(context).length,
      physics: const BouncingScrollPhysics(),
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        final onboarding = OnBoardingList.onBoarding4List(context)[index];
        return Container(
          width: Screens.width(context),
          height: Screens.heigth(context),
          decoration: BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(onboarding.image!),
            ),
          ),
        );
      },
    );
  }
}
