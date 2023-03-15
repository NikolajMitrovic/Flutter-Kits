part of '../product_page.dart';


class _BuildFloatingActionButton extends StatelessWidget {
  final bool? isLiked;
  final ProductModel? product;
  final int? addToCartCounter;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onCartTap;

  const _BuildFloatingActionButton({
    Key? key,
    this.isLiked,
    this.product,
    this.addToCartCounter,
    this.onCartTap,
    this.onFavoriteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      left: Const.margin,
      right: Const.margin,
      bottom: Const.margin,
      height: 60,
      child: Row(
        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Center(
                child: IconButton(
                  icon: Icon((isLiked == true)
                      ? Icons.favorite
                      : Icons.favorite_border),
                  color: theme.errorColor,
                  splashRadius: 25,
                  onPressed: onFavoriteTap,
                ),
              ),
            ),
          ),
       const     SizedBox(width: 25),
          Expanded(
            child: InkWell(
              onTap: onCartTap,
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: theme.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  const    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Text(AppLocalizations.of(context)!.add_to_cart,
                        style: theme.textTheme.button),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
