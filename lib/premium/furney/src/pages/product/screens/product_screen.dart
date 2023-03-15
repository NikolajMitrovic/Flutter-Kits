part of '../product_page.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ProductModel product = ProductList.bestSellerList.first;
  int _swiperIndex = 0;
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _BuildAppBar(
            product: product,
            swiperIndex: _swiperIndex,
            isLiked: _isLiked,
            onFavoriteTap: () {
              setState(() => _isLiked = !_isLiked);
              if (_isLiked == true) {
                showToast(
                  msg: AppLocalizations.of(context)!.added_to_favorite,
                );
              } else {
                showToast(
                  msg: AppLocalizations.of(context)!.remove_from_favorite,
                );
              }
            },
            onIndexChanged: (v) {
              setState(() => _swiperIndex = v);
            },
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: Const.space25),
                _BuildName(product: product),
                const SizedBox(height: Const.space15),
                _BuildPriceAndRating(product: product),
                Divider(color: theme.hintColor),
                _BuildColors(),
                Divider(color: theme.hintColor),
                _BuildDescription(product: product),
                Divider(color: theme.hintColor),
                _BuildReviews(),
                Divider(color: theme.hintColor),
                _BuildSimiliarProductList(),
                const SizedBox(height: 100),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        color: theme.backgroundColor ,
        padding: const EdgeInsets.fromLTRB(
          Const.margin,
          0,
          Const.margin,
          Const.margin,
        ),
        child: CustomElevatedButton(
          onTap: () {},
          label: AppLocalizations.of(context)!.add_to_cart,
        ),
      ),
    );
  }
}
