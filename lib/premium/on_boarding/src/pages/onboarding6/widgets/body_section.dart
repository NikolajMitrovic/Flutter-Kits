part of '../onboarding6_page.dart';


class _BodySection extends StatelessWidget {
  final PageController? controller;
  final ValueChanged<int>? onPageChanged;
  final int? currentIndex;

  const _BodySection({
    Key? key,
    this.controller,
    this.onPageChanged,
    this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned.fill(
      bottom: 100,
      child: Container(
        padding: const EdgeInsets.only(
          top: 70,
          bottom: 25,
        ),
        decoration: BoxDecoration(
            color: theme.backgroundColor ,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(Const.radius25),
              bottomRight: Radius.circular(Const.radius25),
            )),
        child: PageView.builder(
          controller: controller,
          itemCount: OnBoardingList.onBoarding6List(context).length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) {
            final onboarding = OnBoardingList.onBoarding6List(context)[index];
            return Column(
              children: [
                Expanded(
                  child: SvgPicture.asset(
                    onboarding.image!,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(height: Const.space12),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                  ),
                  child: ShakeTransition(
                    duration: const Duration(milliseconds: 800),
                    child: AutoSizeText(
                      OnBoardingList.onBoarding5List(context)[currentIndex!]
                          .title!,
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: Const.space8),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                  ),
                  child: ShakeTransition(
                    duration: const Duration(milliseconds: 900),
                    child: AutoSizeText(
                      OnBoardingList.onBoarding5List(context)[currentIndex!]
                          .subtitle!,
                      style: theme.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ),
                const SizedBox(height: Const.space25),
              ],
            );
          },
        ),
      ),
    );
  }
}
