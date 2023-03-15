part of '../gallery_page.dart';

class _BuildSwiper extends StatelessWidget {
  const _BuildSwiper({
    Key? key,
    required this.args,
    required this.currentIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  final GalleryModel args;
  final double currentIndex;
  final ValueChanged<int>? onIndexChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 30,
            child: Swiper(
              itemCount: args.file?.length ?? 0,
              onIndexChanged: onIndexChanged,
              itemBuilder: (context, index) {
                final image = args.file?[index];
                return InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(Const.radius),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Const.radius),
                    child: OctoImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(image ?? ''),
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomDotsIndicator(
              position: currentIndex,
              itemCount: args.file?.length ?? 0,
            ),
          )
        ],
      ),
    );
  }
}
