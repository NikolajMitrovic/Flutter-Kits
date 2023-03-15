part of '../product_page.dart';

class TreshopProductScreen extends StatefulWidget {
  const TreshopProductScreen({Key? key}) : super(key: key);
  @override
  State<TreshopProductScreen> createState() => _TreshopProductScreenState();
}

class _TreshopProductScreenState extends State<TreshopProductScreen> {
  bool _isLiked = false;
  int _qty = 1;
  late ProductModel product;

  @override
  void initState() {
    super.initState();
    product = Get.arguments as ProductModel;
  }

  @override
  Widget build(BuildContext context) {
    final discountPrice = product.price! * (product.discount / 100);
    final price = product.price! - discountPrice;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                _BuildAppBar(
                  product: product,
                  isLiked: _isLiked,
                  onFavoriteTap: () {
                    setState(() {
                      _isLiked = !_isLiked;
                    });
                  },
                  onLeadingTap: () {
                    Future.delayed(const Duration(microseconds: 100), Get.back)
                        .then((value) => setState(() {}));
                  },
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const SizedBox(height: Const.margin),
                      _BuildNameAndRating(product: product),
                      const SizedBox(height: Const.space25),
                      _BuildDescription(product: product),
                      const SizedBox(height: Const.space15),
                      _BuildItemSize(product: product),
                      const SizedBox(height: Const.space15),
                      _BuildItemColor(product: product),
                      const SizedBox(height: Const.space25),
                    ],
                  ),
                )
              ],
            ),
          ),
          _FooterSection(
            product: product,
            qty: _qty,
            total: price.toInt() * _qty,
            onAddTap: () {
              setState(() => _qty = max(1, _qty + 1));
            },
            onRemoveTap: () {
              if (_qty != 1) {
                setState(() {
                  _qty = min(50, _qty - 1);
                });
              }
            },
            onAddToCartTap: () {
              showToast(msg: AppLocalizations.of(context)!.added_to_cart);
            },
          )
        ],
      ),
    );
  }
}
