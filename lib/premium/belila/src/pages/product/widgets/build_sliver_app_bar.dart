part of '../product_page.dart';

class _HeaderSection extends StatelessWidget {
  final ProductDetailModel? product;

  const _HeaderSection({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor : theme.cardColor,
      expandedHeight: MediaQuery.of(context).size.height / 2,
      pinned: true,
      leading: Padding(
        padding: const EdgeInsets.all(Const.space8),
        child: CircleAvatar(
          backgroundColor : Colors.grey.withOpacity(.2),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: ColorLight.fontTitle,
            ),
            onPressed: Get.back,
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Swiper(
          itemCount: product?.image?.length ?? 0,
          curve: Curves.bounceIn,
          loop: false,
          pagination: const SwiperPagination(alignment: Alignment.bottomCenter),
          itemBuilder: (context, index) {
            final image = product!.image![index];
            return GestureDetector(
              onTap: () => Get.toNamed<dynamic>(
                BelilaRoutes.photoViewList,
                arguments: product!.image,
              ),
              child: OctoImage(
                image: CachedNetworkImageProvider(image),
              ),
            );
          },
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor : Colors.grey.withOpacity(.2),
          child: IconBadge(
            icon: const Icon(
              FeatherIcons.shoppingCart,
              color: ColorLight.fontTitle,
            ),
            hideZero: true,
            onTap: () {
              Get.toNamed<dynamic>(BelilaRoutes.cart);
            },
          ),
        ),
        const SizedBox(width: Const.margin)
      ],
    );
  }
}
