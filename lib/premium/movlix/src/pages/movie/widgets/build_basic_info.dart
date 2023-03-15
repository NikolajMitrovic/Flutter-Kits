part of '../movie_page.dart';

class _BuildBasicInfo extends StatelessWidget {
  const _BuildBasicInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Const.space15),
          Text(AppLocalizations.of(context)!.summaries, style: theme.textTheme.displaySmall),
          const SizedBox(height: Const.space12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space15),
          Text(
            'Director: Surya utama',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space8),
          Text(
            'Stars: Michael, Tresvor, Loris',
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
