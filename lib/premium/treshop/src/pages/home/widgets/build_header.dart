part of '../home_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Hello, Veranda! 👋',
            style: theme.textTheme.displayLarge!.copyWith(
              fontSize: 25,
            ),
          ),
          AutoSizeText(
            AppLocalizations.of(context)!.get_popular_fashion_from_home,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
