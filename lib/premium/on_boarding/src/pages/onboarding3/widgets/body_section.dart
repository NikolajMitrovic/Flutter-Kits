part of '../onboarding3_page.dart';

class _BodySection extends StatelessWidget {
  final PageController? controller;
  final ValueChanged<int>? onPageChanged;
  final List<OnBoardingModel> itemCount;

  const _BodySection({
    Key? key,
    this.controller,
    this.onPageChanged,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned.fill(
      child: PageView.builder(
        controller: controller,
        itemCount: itemCount.length,
        physics: const BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          final onboarding = itemCount[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(
              Const.margin,
              0,
              Const.margin,
              100,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShakeTransition(
                  duration: const Duration(milliseconds: 400),
                  child: SvgPicture.asset(
                    onboarding.image!,
                    width: Screens.width(context) / 1.8,
                    height: Screens.width(context) / 1.8,
                  ),
                ),
                const SizedBox(height: Const.space25),
                ShakeTransition(
                  duration: const Duration(milliseconds: 500),
                  child: AutoSizeText(
                    onboarding.title!,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displayLarge,
                  ),
                ),
                const SizedBox(height: Const.space15),
                ShakeTransition(
                  duration: const Duration(milliseconds: 600),
                  child: AutoSizeText(
                    onboarding.subtitle!,
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
