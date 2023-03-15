part of '../product_page.dart';

class _HeaderSection extends StatelessWidget {
  final ProductModel product;
  final ValueChanged<int> onIndexChanged;
  final int imageIndex;
  final VoidCallback? onImageViewTap;

  const _HeaderSection(
      {Key? key,
      required this.product,
      required this.onIndexChanged,
      required this.imageIndex,
      this.onImageViewTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 280,
          child: Stack(
            children: [
              Swiper(
                itemCount: product.images!.length,
                onIndexChanged: onIndexChanged,
                itemBuilder: (context, index) {
                  final images = product.images![index];
                  return GestureDetector(
                    onTap: onImageViewTap,
                    child: CustomNetworkImage(image: images),
                  );
                },
              ),
              Positioned(
                bottom: 50,
                left: Const.margin,
                child: CustomDotsIndicator(
                  dotsCount: product.images,
                  position: imageIndex,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: Const.margin,
          left: Const.margin,
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () => Get.back<dynamic>(),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor : Colors.black45,
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: Const.margin,
          right: Const.margin,
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () => Get.toNamed<dynamic>(ShuppyRoutes.cart),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor : Colors.black45,
              child: Icon(FeatherIcons.shoppingCart, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
