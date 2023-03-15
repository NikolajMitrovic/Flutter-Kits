part of '../barber_page.dart';

class _BuildReviewCard extends StatelessWidget {
  const _BuildReviewCard({
    Key? key,
    required this.review,
  }) : super(key: key);

  final ReviewModel review;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor : theme.backgroundColor ,
            backgroundImage: CachedNetworkImageProvider(review.userImage??''),
          ),
          title: Text(review.username ?? '',
              style: theme.textTheme.headlineMedium),
          subtitle: StarScore(
            score: review.rating ?? 0,
            star: Star(
              fillColor: Colors.red,
              emptyColor: theme.disabledColor,
              size: 15,
            ),
          ),
          trailing: Text(
            timeago.format(review.createdAt!),
            style: theme.textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            review.description??'',
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: Const.margin),
          child: Divider(
            color: theme.unselectedWidgetColor,
          ),
        )
      ],
    );
  }
}
