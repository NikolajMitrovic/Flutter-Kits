part of '../product_page.dart';

class _BuildBody extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onFavoriteTap;
  final bool isFavorite;

  const _BuildBody({
    Key? key,
    required this.product,
    required this.onFavoriteTap,
    required this.isFavorite,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  product.title ?? '',
                  style: theme.textTheme.displaySmall,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(width: Const.space25),
              IconButton(
                onPressed: onFavoriteTap,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: Icon(
                  (isFavorite == true) ? Icons.favorite : Icons.favorite_border,
                  color: theme.errorColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space15),
          Row(
            children: [
              SmoothStarRating(
                color: Colors.yellow[700],
                spacing: 1,
                rating: product.ratingValue ?? 0,
                borderColor: theme.disabledColor,
              ),
              const SizedBox(width: Const.space15),
              Text(
                '121 ${AppLocalizations.of(context)!.reviews}',
                style: theme.textTheme.titleSmall,
              )
            ],
          ),
          const SizedBox(height: Const.space15),
          Text(
            NumberFormat.currency(
              symbol: r'$',
            ).format(product.normalPrice),
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: theme.primaryColor),
          ),
          const SizedBox(height: Const.space15),
          ReadMoreText(
            product.description ?? '',
            trimLines: 4,
            colorClickableText: theme.primaryColor,
            trimMode: TrimMode.Line,
            style: theme.textTheme.bodyMedium,
            trimCollapsedText: AppLocalizations.of(context)!.show_more,
            trimExpandedText: AppLocalizations.of(context)!.show_less,
            moreStyle: theme.textTheme.bodyMedium?.copyWith(
              color: theme.primaryColor,
            ),
          ),
          
        ],
      ),
    );
  }
}
