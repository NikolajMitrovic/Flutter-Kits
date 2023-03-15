part of '../home_page.dart';

class _EstateCardHorizontal extends StatelessWidget {
  final EstateModel estate;

  const _EstateCardHorizontal({
    Key? key,
    required this.estate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 270,
      height: 275,
      margin: const EdgeInsets.only(right: Const.space15),
      padding: const EdgeInsets.all(Const.space5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        color: theme.cardColor,
      ),
      child: InkWell(
        onTap: () => Get.toNamed<dynamic>(
          LestateRoutes.estate,
          arguments: estate,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.radius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    estate.image ?? '',
                  ),
                ),
              ),
            ),
            const SizedBox(height: Const.space8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    estate.name ?? '',
                    style: theme.textTheme.displaySmall,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(width: Const.space8),
                Row(
                  children: [
                    Text(
                      NumberFormat.currency(
                        symbol: r'$',
                        decimalDigits: 0,
                      ).format(estate.price),
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: Const.accentColor,
                      ),
                    ),
                    Text(
                      '/${AppLocalizations.of(context)!.month}'.toLowerCase(),
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: Const.space8),
            Row(
              children: [
                Icon(
                  IconlyBold.location,
                  color: theme.disabledColor,
                  size: 16,
                ),
                const SizedBox(width: Const.space8),
                Expanded(
                  child: Text(
                    estate.location ?? '',
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Const.space8),
            Row(
              children: [
                _BuildFeature(
                  icon: CustomIcons.slumber,
                  value: estate.bed.toString(),
                ),
                const SizedBox(width: Const.space12),
                _BuildFeature(
                  icon: CustomIcons.shower,
                  value: estate.shower.toString(),
                ),
                const Spacer(),
                _BuildFeature(
                  icon: CustomIcons.ruler,
                  value: '${estate.sqft} sqft',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildFeature extends StatelessWidget {
  final String icon;
  final String value;

  const _BuildFeature({
    Key? key,
    required this.icon,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 22,
          color: theme.primaryColor,
        ),
        const SizedBox(width: Const.space8),
        Text(value, style: theme.textTheme.headlineMedium)
      ],
    );
  }
}
