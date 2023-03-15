part of '../product_page.dart';


class _BuildProductReview extends StatelessWidget {
  const _BuildProductReview({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.product_review,
          style: theme.textTheme.displaySmall,
        ),
        ListView.separated(
          itemCount: productReviewList.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final review = productReviewList[index];

            return _ReviewCard(review: review);
          },
        ),
      ],
    );
  }
}
