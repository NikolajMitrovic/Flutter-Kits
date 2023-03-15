part of '../home_page.dart';

class _BuildSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: Screens.width(context) / 2,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // color: Colors.black,
      ),
      child: Swiper(
        itemCount: SwiperList.swiperList.length,
        autoplay: true,
        itemBuilder: (context, index) {
          final data = SwiperList.swiperList[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: CachedNetworkImageProvider(data.images!.first),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.black87,
                        Colors.black26,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: Const.margin,
                  right: Const.margin,
                  bottom: Const.margin,
                  child: SizedBox(
                    width: Screens.width(context) / 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Cyber Furniture',
                          style: theme.textTheme.titleSmall
                              ?.copyWith(color: theme.highlightColor),
                        ),
                        Text(
                          'Sale Up To 70% Off',
                          style: theme.textTheme.displayLarge!
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () { 
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor : theme.highlightColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  Const.radius,
                                ),
                              ),
                            ),
                            child: AutoSizeText(
                              'Shop Now',
                              maxLines: 1,
                              style: theme.textTheme.titleSmall?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
