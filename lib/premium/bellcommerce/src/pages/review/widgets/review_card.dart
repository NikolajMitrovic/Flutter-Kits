part of '../review_page.dart';

class _ReviewCard extends StatelessWidget {
  final ReviewModel review;

  const _ReviewCard({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: CachedNetworkImageProvider(
              review.user?.image ?? '',
            ),
            backgroundColor : theme.disabledColor,
          ),
          title: Text(
            review.user?.name ?? '',
            style: theme.textTheme.bodyLarge,
          ),
          subtitle: Row(
            children: [
              SmoothStarRating(
                color: Colors.yellow[700],
                spacing: 1,
                rating: review.rating ?? 0,
                size: 16,
                borderColor: theme.disabledColor,
              ),
              const SizedBox(width: Const.space8),
              Text(
                review.rating.toString(),
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {
              showModalBottomSheet<dynamic>(
                backgroundColor : theme.backgroundColor ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    height: 100,
                  );
                },
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ),
        Text(
          review.comment ?? '',
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: Const.space8),
        Row(
          children: review.screenshoots!
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(right: Const.space12),
                  child: InkWell(
                    onTap: () => Get.toNamed<dynamic>(
                      BellcommerceRoutes.photoListView,
                      arguments:review.screenshoots,
                    ),
                    borderRadius: BorderRadius.circular(Const.radius),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Const.radius),
                      child: OctoImage(
                        width: 75,
                        height: 75,
                        image: CachedNetworkImageProvider(e),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: Const.space15),
      ],
    );
  }
}
