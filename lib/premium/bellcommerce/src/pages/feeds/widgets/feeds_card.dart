part of '../feeds_page.dart';

class _FeedCard extends StatelessWidget {
  const _FeedCard({
    Key? key,
    required this.feed,
  }) : super(key: key);

  final FeedModel feed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(Const.radius),
        onTap: () => Get.toNamed<dynamic>(
          BellcommerceRoutes.product,
          arguments: feed.product,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: OctoImage(
                image: CachedNetworkImageProvider(
                  feed.product!.image!,
                ),
                width: 70,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: Const.space15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(feed.title!,
                      style: Theme.of(context).textTheme.displaySmall),
                  const SizedBox(height: Const.space8),
                  ReadMoreText(
                    feed.description!,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.left,
                    trimLines: 3,
                    colorClickableText: Theme.of(context).primaryColor,
                    trimMode: TrimMode.Line,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                      DateFormat.yMMMEd().format(
                        feed.dateTime!,
                      ),
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: Const.space12),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
