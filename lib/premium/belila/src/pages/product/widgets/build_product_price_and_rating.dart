part of '../product_page.dart';

class _ProductPriceAndRating extends StatelessWidget {
  const _ProductPriceAndRating({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetailModel? product;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        RichText(
          textAlign: TextAlign.right,
          text: TextSpan(
            children: [
              TextSpan(
                text: NumberFormat.currency(
                  symbol: 'Rp. ',
                  decimalDigits: 0,
                  locale: 'id-ID',
                ).format(product?.price ?? 0),
                style: theme.textTheme.displaySmall,
              ),
              TextSpan(
                text: '/${product?.unit}',
                style: theme.textTheme.headlineMedium,
              )
            ],
          ),
        ),
        const SizedBox(width: Const.space8),
        Text(
          '|',
          style: theme.textTheme.displayLarge!.copyWith(
            color: theme.disabledColor,
          ),
        ),
        const SizedBox(width: Const.space8),
        CustomStarRating(rating: product?.rating?.toDouble() ?? 0),
        const SizedBox(width: Const.space8),
        Text(
          product?.rating.toString() ?? 0.toString(),
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
