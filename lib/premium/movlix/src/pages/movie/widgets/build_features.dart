part of '../movie_page.dart';



class _BuildFeatures extends StatelessWidget {
  const _BuildFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Divider(color: theme.disabledColor),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Icon(FeatherIcons.plus),
                const SizedBox(height: Const.space8),
                Text(
                  AppLocalizations.of(context)!.add_to_list,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(FeatherIcons.heart),
                const SizedBox(height: Const.space8),
                Text(
                  AppLocalizations.of(context)!.rate,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(FeatherIcons.download),
                const SizedBox(height: Const.space8),
                Text(
                  AppLocalizations.of(context)!.download,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(FeatherIcons.share2),
                const SizedBox(height: Const.space8),
                Text(
                  AppLocalizations.of(context)!.share,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ],
        ),
        Divider(color: theme.disabledColor),
      ],
    );
  }
}
