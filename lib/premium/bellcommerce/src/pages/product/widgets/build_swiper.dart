part of '../product_page.dart';

class _BuildSwiper extends StatelessWidget {
  final ProductModel product;

  const _BuildSwiper({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        itemCount: product.images!.length,
        autoplay: true,
        autoplayDelay: 5000,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            size: 7,
            activeColor: theme.primaryColor,
            color: theme.disabledColor,
            activeSize: 7,
          ),
        ),
        itemBuilder: (context, index) {
          final image = product.images![index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: InkWell(
              onTap: () => Get.toNamed<dynamic>(
                BellcommerceRoutes.photoListView,
                arguments: product.images,
              ),
              child: OctoImage(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
