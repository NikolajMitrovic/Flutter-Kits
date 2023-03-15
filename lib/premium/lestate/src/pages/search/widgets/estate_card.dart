part of '../search_page.dart';

class _EstateCard extends StatelessWidget {
  const _EstateCard({
    Key? key,
    required this.estate,
  }) : super(key: key);

  final EstateModel estate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      padding: const EdgeInsets.all(Const.space8),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      child: InkWell(
        onTap: () => Get.toNamed<dynamic>(
          LestateRoutes.estate,
          arguments: estate,
        ),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
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
            const SizedBox(width: Const.space12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    estate.name ?? '',
                    style: theme.textTheme.displaySmall,
                    maxLines: 1,
                  ),
                  const SizedBox(height: Const.space8),
                  Row(
                    children: [
                      Icon(
                        IconlyBold.location,
                        color: theme.disabledColor,
                        size: 16,
                      ),
                      const SizedBox(width: Const.space5),
                      Expanded(
                        child: Text(
                          estate.location ?? '',
                          style: theme.textTheme.titleMedium,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Const.space5),
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
            ),
          ],
        ),
      ),
    );
  }
}
