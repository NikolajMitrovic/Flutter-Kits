part of '../home_page.dart';

class _BuildCarouselSwiper extends StatelessWidget {
  const _BuildCarouselSwiper({
    Key? key,
    required this.onIndexChanged,
    required this.carouselIndex,
    required this.itemCount,
  }) : super(key: key);

  final ValueChanged<int> onIndexChanged;
  final int carouselIndex;
  final List<String> itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Stack(
        children: [
          Swiper(
            itemCount: itemCount.length,
            onIndexChanged: onIndexChanged,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      itemCount[index],
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: Const.margin,
            bottom: Const.margin,
            child: CustomDotsIndicator(
              dotsCount: itemCount,
              position: carouselIndex,
            ),
          ),
        ],
      ),
    );
  }
}
