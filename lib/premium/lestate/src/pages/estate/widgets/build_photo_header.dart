part of '../estate_page.dart';

class _BuildPhotoHeader extends StatelessWidget {
  final EstateModel estate;
  final VoidCallback onBookmarkTap;
  final bool isBookmarked;

  const _BuildPhotoHeader({
    Key? key,
    required this.estate,
    required this.onBookmarkTap,
    required this.isBookmarked,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 260,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  estate.image ?? '',
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                  color: theme.backgroundColor ,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(Const.radius),
                    topRight: Radius.circular(Const.radius),
                  )),
            ),
          ),
          Positioned(
            right: Const.margin,
            bottom: 0,
            child: InkWell(
              borderRadius: BorderRadius.circular(
                Const.margin,
              ),
              onTap: onBookmarkTap,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(
                    Const.margin,
                  ),
                ),
                child: Icon(
                  IconlyBold.bookmark,
                  color: (isBookmarked == true)
                      ? Const.accentColor
                      : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
