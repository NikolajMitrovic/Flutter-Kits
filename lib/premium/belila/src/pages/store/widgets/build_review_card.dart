part of '../store_page.dart';

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    Key? key,
    required this.review,
  }) : super(key: key);

  final ReviewStoreModel review;

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
            backgroundImage: CachedNetworkImageProvider(
              review.user?.image ?? Const.image,
            ),
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
        const SizedBox(height: Const.space15),
        Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            color: theme.primaryColor.withOpacity(.05),
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          child: ListTile(
            onTap: () => Get.toNamed<dynamic>(BelilaRoutes.product),
            leading: CustomNetworkImage(
              image: review.product?.image ?? Const.image,
              width: 50,
              height: 50,
            ),
            title: Text(
              review.product?.name ?? '',
              style: theme.textTheme.bodyMedium,
              maxLines: 1,
            ),
            subtitle: Text(
              NumberFormat.currency(
                symbol: 'Rp. ',
                decimalDigits: 0,
              ).format(review.product?.price ?? 0),
              style: theme.textTheme.bodyMedium,
              maxLines: 1,
            ),
          ),
        )
      ],
    );
  }
}
