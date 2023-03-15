part of '../product_page.dart';

class _BodySection extends StatelessWidget {
  final ProductModel product;

  const _BodySection({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned.fill(
      child: DraggableScrollableSheet(
        initialChildSize: .6,
        minChildSize: .6,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: theme.backgroundColor ,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              padding: const  EdgeInsets.symmetric(horizontal: Const.margin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const     SizedBox(height: 12),
                  Center(
                    child: Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: theme.unselectedWidgetColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                   const SizedBox(height: Const.space25),
                  CustomShakeTransition(
                    duration: const  Duration(milliseconds: 1000),
                    child: Text(product.name!,
                        style: theme.textTheme.displaySmall,
                        overflow: TextOverflow.clip,
                        maxLines: 2),
                  ),
                   const SizedBox(height: Const.space12),
                  CustomShakeTransition(
                    duration: const  Duration(milliseconds: 1200),
                    child: Row(
                      children: [
                        CustomStarRating(rating: product.rating!),
                         const SizedBox(width: 5),
                        Text(
                          product.rating.toString(),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall!
                              .copyWith(fontSize: 10),
                        ),
                         const SizedBox(width: 5),
                        Text(
                          '0 ${AppLocalizations.of(context)!.review}',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall!
                              .copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(height: Const.space15),
                  CustomShakeTransition(
                    duration: const  Duration(milliseconds: 1300),
                    child: Text(
                      NumberFormat.currency(
                        symbol: r'$ ',
                      ).format(product.price),
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: theme.primaryColor),
                    ),
                  ),
                   const SizedBox(height: Const.space12),
                  CustomShakeTransition(
                    duration: const  Duration(milliseconds: 1400),
                    child: ReadMoreText(
                      product.description!,
                      style: theme.textTheme.bodyMedium,
                      trimLines: 5,
                      colorClickableText: theme.primaryColor,
                      trimMode: TrimMode.Line,
                      trimCollapsedText:
                          '... ${AppLocalizations.of(context)!.more}',
                      trimExpandedText:
                          ' ${AppLocalizations.of(context)!.less}',
                    ),
                  ),
                   const SizedBox(height: Const.space25),
                  CustomShakeTransition(
                    duration: const  Duration(milliseconds: 1500),
                    child: _BuildLabelSection(
                      label: AppLocalizations.of(context)!.review,
                      onViewAllTap: () {
                        showToast(msg: AppLocalizations.of(context)!.see_all_review_clicked);
                      },
                    ),
                  ),
                   const SizedBox(height: 8),
                  EmptySection(
                    image: Illustrations.emptyRating,
                    title: AppLocalizations.of(context)!.does_not_have_a_rating_yet,                 ),
                  // ListView.builder(
                  //   itemCount: product!.reviews!.length,
                  //   physics: ScrollPhysics(),
                  //   shrinkWrap: true,
                  //   scrollDirection: Axis.vertical,
                  //   padding: EdgeInsets.all(0),
                  //   itemBuilder: (context, index) {
                  //     return ReviewCard(
                  //       review: product!.reviews![index],
                  //     );
                  //   },
                  // ),
                   const SizedBox(height: 80),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
