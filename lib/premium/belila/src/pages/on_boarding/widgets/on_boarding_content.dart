part of '../on_boarding_page.dart';

class _OnBoardingContent extends StatelessWidget {
  const _OnBoardingContent({
    Key? key,
    required this.item,
  }) : super(key: key);

  final OnBoardingModel? item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        const Spacer(),
        ShakeTransition(
          duration: const Duration(milliseconds: 500),
          child: SvgPicture.asset(item!.image!)
        ),
        const Spacer(),
        ShakeTransition(
          duration: const Duration(milliseconds: 600),
          child: Text(
            item!.title!,
            style: theme.textTheme.displayLarge,
          ),
        ),
        const SizedBox(height: Const.space15),
        ShakeTransition(
          duration: const Duration(milliseconds: 700),
          child: Text(
            item!.subtitle!,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
