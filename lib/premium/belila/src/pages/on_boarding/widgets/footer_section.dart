part of '../on_boarding_page.dart';

class _FooterSection extends StatelessWidget {
  final int currentIndex;
  final VoidCallback onNextTap;
  final VoidCallback? onEnd;
  final List<OnBoardingModel>? list;
  final bool? appearText;

  const _FooterSection({
    Key? key,
    required this.currentIndex,
    required this.onNextTap,
    this.list,
    this.appearText,
    this.onEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned(
      bottom: Const.margin,
      left: Const.margin,
      right: Const.margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDotsIndicator(
            position: currentIndex,
            dotsCount: list!.length,
          ),
          InkWell(
            onTap: onNextTap,
            borderRadius: BorderRadius.circular(Const.space25),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Const.space25),
              ),
              elevation: 5,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                width: (currentIndex == 2) ? 200 : 50,
                height: 50,
                onEnd: onEnd,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      // visible: if(appearText == true && currentIndex == 2)
                      //     ? true
                      //     : false,
                      visible: false,
                      child: Text(
                        AppLocalizations.of(context)!.get_started,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    const SizedBox(width: Const.space5),
                    const Icon(FeatherIcons.arrowRight),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
