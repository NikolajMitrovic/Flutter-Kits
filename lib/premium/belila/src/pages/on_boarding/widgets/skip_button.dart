part of '../on_boarding_page.dart';

class _BuildSkipButton extends StatelessWidget {
  final VoidCallback? onSkipTap;
  final int? currentIndex;

  const _BuildSkipButton({
    Key? key,
    this.onSkipTap,
    this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned(
      top: Const.margin + 30,
      right: Const.margin,
      child: ShakeTransition(
        duration: const Duration(milliseconds: 400),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: (currentIndex == 2)
              ? const SizedBox()
              : InkWell(
                  onTap: onSkipTap,
                  child: Text(
                    AppLocalizations.of(context)!.skip,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
        ),
      ),
    );
  }
}
