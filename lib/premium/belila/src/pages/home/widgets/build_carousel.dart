part of '../home_page.dart';

class _BuildCarousel extends StatefulWidget {
  const _BuildCarousel({Key? key}) : super(key: key);

  @override
  State<_BuildCarousel> createState() => _BuildCarouselState();
}

class _BuildCarouselState extends State<_BuildCarousel> {
  int _position = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Swiper(
                itemCount: bannerList.length,
                autoplay: true,
                autoplayDelay: 7000,
                index: _position,
                onIndexChanged: (v) {
                  setState(() {
                    _position = v;
                  });
                },
                itemBuilder: (context, index) {
                  final banner = bannerList[index];
                  return GestureDetector(
                    onTap: () {
                      // Get.toNamed(
                      //   Routes.photoViewCarouselHome,
                      //   arguments: banner,
                      // );
                    },
                    child: CustomNetworkImage(
                      image: banner.image!,
                      fit: BoxFit.fitWidth,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: Const.space8),
          if (bannerList.isEmpty)
            const SizedBox()
          else
            CustomDotsIndicator(
              dotsCount: bannerList.length,
              position: _position,
            )
        ],
      ),
    );
  }
}
