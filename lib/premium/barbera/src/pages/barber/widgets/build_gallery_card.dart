part of '../barber_page.dart';

class _BuildGalleryCard extends StatelessWidget {
  final GalleryModel gallery;

  const _BuildGalleryCard({
    Key? key,
    required this.gallery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: ()=> Get.toNamed<dynamic>(BarberaRoutes.gallery,arguments: gallery),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Const.radius),
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(Const.radius),
              child: OctoImage(
                image: CachedNetworkImageProvider(
                  gallery.thumbnail ?? '',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 5,
              top: 5,
              child: SvgPicture.asset(
                Assets.multipleImage,
                width: 18,
                height: 18,
                color: theme.disabledColor.withOpacity(.8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
