part of '../estate_page.dart';


class _BuildDescription extends StatelessWidget {
  const _BuildDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const description = 'This neat 2 bedroom unit is walking distance to Eastland and Target Square, it is also only a few minutes away from Eastlink. The unit features gas appliances, kitchen with separate dining/meals area, spacious lounge, bedrooms with built in robes, single lock up garage.';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.description,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          ReadMoreText(
            description,
            style: theme.textTheme.bodyMedium,
            trimMode: TrimMode.Line,
            trimLines: 3,
            trimCollapsedText: AppLocalizations.of(context)!.read_more,
            trimExpandedText: AppLocalizations.of(context)!.show_less,
            lessStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.primaryColor,
            ),
            moreStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
