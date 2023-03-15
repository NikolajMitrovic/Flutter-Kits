part of '../product_page.dart';

class _FooterSection extends StatelessWidget {
  const _FooterSection({
    Key? key,
    required this.product,
    this.qty,
    this.total,
    this.onAddTap,
    this.onRemoveTap,
    this.onAddToCartTap,
  }) : super(key: key);

  final ProductModel product;
  final int? qty;
  final int? total;
  final VoidCallback? onAddTap;
  final VoidCallback? onRemoveTap;
  final VoidCallback? onAddToCartTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: Screens.width(context),
      height: 130,
      alignment: Alignment.bottomCenter,
      color: theme.cardColor,
      padding: const EdgeInsets.fromLTRB(
        Const.margin,
        Const.space12,
        Const.margin,
        Const.margin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.qty,
                    style: theme.textTheme.titleMedium!.copyWith(fontSize: 16),
                  ),
                  const SizedBox(width: Const.space8),
                  InkWell(
                    onTap: onRemoveTap,
                    borderRadius: BorderRadius.circular(25),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor : theme.primaryColor,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: Const.space8),
                  Text(
                    qty.toString(),
                    style: theme.textTheme.bodyMedium!.copyWith(fontSize: 16),
                  ),
                  const SizedBox(width: Const.space8),
                  InkWell(
                    onTap: onAddTap,
                    borderRadius: BorderRadius.circular(25),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor : theme.primaryColor,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: Const.space8),
                ],
              ),
              Row(
                children: [
                  AutoSizeText(
                    AppLocalizations.of(context)!.total,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: Const.space8),
                  AutoSizeText(
                    NumberFormat.currency(
                      symbol: r'$',
                    ).format(total),
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: onAddToCartTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(FeatherIcons.shoppingCart),
                const SizedBox(width: Const.space15),
                AutoSizeText(
                  AppLocalizations.of(context)!.add_to_cart,
                  style: theme.textTheme.button,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
