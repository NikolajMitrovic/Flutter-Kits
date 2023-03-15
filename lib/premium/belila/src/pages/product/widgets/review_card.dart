part of '../product_page.dart';

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    Key? key,
    required this.review,
  }) : super(key: key);

  final ReviewProductModel review;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: CachedNetworkImageProvider(review.user!.image!),
          ),
          title: Text(
              review.user?.name ?? AppLocalizations.of(context)!.no_name,
              style: theme.textTheme.headlineMedium),
          subtitle: Row(
            children: [
              CustomStarRating(
                rating: review.rating!.toDouble(),
              ),
              const SizedBox(width: Const.space12),
              Text(
                '${review.rating!}.0',
                style: theme.textTheme.headlineSmall,
              ),
              const Spacer(),
              Text(
                  timeago.format(
                    review.createdAt!,
                    // DateTime.now(),
                    locale: 'id_short',
                  ),
                  style: theme.textTheme.titleSmall),
            ],
          ),
        ),
        Text(
          review.review ?? '',
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.left,
          maxLines: 4,
        ),
        const SizedBox(height: Const.space15),
        if (review.image != '')
          InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () => Get.toNamed<dynamic>(
              BelilaRoutes.photoView,
              arguments: review.image,
            ),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(review.image!),
                ),
              ),
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }
}
