part of '../home_page.dart';

class _BuildSwiper extends StatelessWidget {
  const _BuildSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        itemCount: productList.length,
        autoplay: true,
        autoplayDelay: 5000,
        pagination: SwiperPagination(
          margin: const EdgeInsets.only(top: Const.space12),
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: Theme.of(context).primaryColor,
            color: Theme.of(context).disabledColor,
          ),
        ),
        itemBuilder: (context, index) {
          final product = productList[index];
          return GestureDetector(
            onTap: () {
              // navigateToProductDetailPage(product);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
                right: Const.margin,
                left: Const.margin,
                top: Const.margin,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Const.radius),
                child: OctoImage(
                  image: CachedNetworkImageProvider(
                    product.image!,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
