part of '../product_page.dart';

class _BuildAppBar extends StatelessWidget {
  final ProductModel? product;
  final int? swiperIndex;
  final VoidCallback? onFavoriteTap;
  final bool? isLiked;
  final ValueChanged<int>? onIndexChanged;

  const _BuildAppBar({
    Key? key,
    this.product,
    this.swiperIndex,
    this.onFavoriteTap,
    this.onIndexChanged,
    this.isLiked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverAppBar(
      pinned: true,
      expandedHeight: 250,
      backgroundColor : theme.backgroundColor ,
      leading: IconButton(
        color: theme.primaryColor,
        icon: const Icon(Icons.arrow_back),
        onPressed: Get.back,
      ),
      actions: [
        IconButton(
          icon: Icon((isLiked==true) ? Icons.favorite : Icons.favorite_border),
          color: Colors.red,
          onPressed: onFavoriteTap,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Swiper(
              itemCount: product!.images!.length,
              onIndexChanged: onIndexChanged,
              itemBuilder: (context, index) {
                final data = product!.images![index];
                return CustomNetworkImage(
                  image: data,
                  borderRadius: BorderRadius.zero,
                );
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomDotsIndicator(
                dotsCount: product!.images,
                position: swiperIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
