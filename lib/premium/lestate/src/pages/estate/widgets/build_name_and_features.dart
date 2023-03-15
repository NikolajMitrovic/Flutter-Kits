part of '../estate_page.dart';

class _BuildNameAndFeatures extends StatelessWidget {
  final EstateModel estate;

  const _BuildNameAndFeatures({
    Key? key,
    required this.estate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            estate.name ?? '',
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(height: Const.space15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BuildFeature(
                icon: CustomIcons.slumber,
                value:'${estate.bed} ${AppLocalizations.of(context)!.rooms}',
              ),
              const SizedBox(width: Const.space12),
              _BuildFeature(
                icon: CustomIcons.shower,
                value: '${estate.shower} ${AppLocalizations.of(context)!.bath}',
              ),
              const SizedBox(width: Const.space12),
              _BuildFeature(
                icon: CustomIcons.ruler,
                value: '${estate.sqft} sqft',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
