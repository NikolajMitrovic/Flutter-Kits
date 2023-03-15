part of '../product_page.dart';


class _BuildPriceAndRating extends StatelessWidget {
  const _BuildPriceAndRating({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          Expanded(
            child: AutoSizeText(
              NumberFormat.currency(symbol: r'$').format(product.price),
              style: theme.textTheme.displaySmall,
            ),
          ),
          Row(
            children: [
              SmoothStarRating(
                rating: product.rating!,
                color: theme.highlightColor,
                borderColor: theme.highlightColor,
                size: 20,
              ),
              const SizedBox(width: Const.space8),
              AutoSizeText(
                0.toString(),
                style: theme.textTheme.titleSmall,
              ),
            ],
          )
        ],
      ),
    );
  }
}
