part of '../booking_detail_page.dart';

class _BuildListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final int price;

  const _BuildListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Const.margin),
                    child: Text(
                      title,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Const.margin),
                    child: Row(
                      children: [
                        const Icon(
                          FeatherIcons.clock,
                          size: 12,
                        ),
                        const SizedBox(width: Const.space12),
                        Text(
                          subtitle,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Text(
                NumberFormat.currency(
                  symbol: r'$',
                  decimalDigits: 0,
                ).format(price),
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ],
        ),
        Divider(color: theme.unselectedWidgetColor),
      ],
    );
  }
}
