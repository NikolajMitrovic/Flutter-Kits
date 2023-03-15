part of '../product_page.dart';

class _BodySection extends StatelessWidget {
  final bool isLiked;
  final TabController? tabController;
  final ProductDetailModel product;
  final VoidCallback? onFavoriteTap;
  final List<ProductShippingCostModel>? shippingCost;

  const _BodySection({
    Key? key,
    required this.product,
    required this.isLiked,
    this.onFavoriteTap,
    this.tabController,
    this.shippingCost,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return SliverPadding(
      padding: const EdgeInsets.all(Const.margin),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          _ProductNameAndFavoriteButton(
            product: product,
            isLiked: isLiked,
            favoriteOnTap: onFavoriteTap,
          ),
          const SizedBox(height: Const.space12),
          _ProductPriceAndRating(product: product),
          const SizedBox(height: Const.space15),
          _StoreListTile(product: product),
          const SizedBox(height: Const.space15),
          _BuildDeliveryDetail(shippingCost: shippingCost),
          const SizedBox(height: Const.space15),
          _BuildProductInformation(product: product),
          const SizedBox(height: Const.space15),
          _BuildProductDescription(product: product),
          const SizedBox(height: Const.space25),
          const _BuildProductReview(),
          const SizedBox(height: Const.space25),
        ]),
      ),
    );
  }
}
