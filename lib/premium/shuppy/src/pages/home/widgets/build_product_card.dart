part of '../home_page.dart';

class _BuildProductCard extends StatelessWidget {
  final ProductModel? product;
  final void Function() onPressed;

  const _BuildProductCard({
    Key? key,
    required this.onPressed,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 150,
        margin: const  EdgeInsets.only(right: Const.space15),
        child: Column(
          children: [
            CustomNetworkImage(image: product!.images!.first),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product!.name!,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyMedium!.copyWith(height: 1.2),
                  ),
                const    SizedBox(height: 3),
                  CustomPriceText(value: product!.price!),
                const    SizedBox(height: 3),
                  Row(
                    children: [
                      CustomStarRating(rating: product!.rating!),
                  const      SizedBox(width: 5),
                      Text(
                        product!.rating.toString(),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.left,
                        style:
                            theme.textTheme.titleSmall!.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
