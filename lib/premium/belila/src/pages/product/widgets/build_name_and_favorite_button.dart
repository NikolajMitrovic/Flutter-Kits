part of '../product_page.dart';

class _ProductNameAndFavoriteButton extends StatelessWidget {
  final ProductDetailModel? product;
  final bool isLiked;
  final VoidCallback? favoriteOnTap;

  const _ProductNameAndFavoriteButton(
      {Key? key, this.product, required this.isLiked, this.favoriteOnTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(product?.name ?? '', style: theme.textTheme.displaySmall),
        ),
        const SizedBox(width: Const.space15),
        IconButton(
          icon: Icon(
            (isLiked == true) ? Icons.favorite : Icons.favorite_border,
          ),
          color: theme.errorColor,
          onPressed: favoriteOnTap,
        ),
      ],
    );
  }
}
