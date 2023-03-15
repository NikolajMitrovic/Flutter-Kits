part of '../home_page.dart';

class _BuildProductCard extends StatelessWidget {
  const _BuildProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final discountPrice = product.price! * (product.discount / 100);

    return Padding(
      padding: const EdgeInsets.only(right: Const.space15),
      child: InkWell(
        onTap: () => Get.toNamed<dynamic>(TreshopRoutes.product, arguments: product),
        borderRadius: BorderRadius.circular(Const.radius),
        child: Container(
          width: 170,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (product.discount != 0)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: theme.backgroundColor ,
                          borderRadius: BorderRadius.circular(Const.radius),
                        ),
                        child: Text(
                          '${product.discount}% OFF',
                          style: theme.textTheme.headlineMedium,
                        ),
                      )
                    else
                      const SizedBox(),
                    Icon(
                      Icons.favorite,
                      color: theme.disabledColor,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: OctoImage(
                  image: CachedNetworkImageProvider(
                    product.images!.first,
                  ),
                ),
              ),
              const SizedBox(height: Const.space8),
              Container(
                width: 170,
                height: 70,
                padding: const EdgeInsets.all(Const.space8),
                decoration: BoxDecoration(
                  color: theme.backgroundColor ,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(Const.radius),
                    bottomRight: Radius.circular(Const.radius),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        product.name ?? '',
                        maxLines: 1,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    const SizedBox(height: Const.space8),
                    if (product.discount != 0)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            NumberFormat.currency(
                              symbol: r'$',
                              decimalDigits: 0,
                            ).format(product.price! - discountPrice),
                            style: theme.textTheme.displaySmall,
                          ),
                          const SizedBox(width: Const.space5),
                          Text(
                            NumberFormat.currency(
                              symbol: r'$',
                              decimalDigits: 0,
                            ).format(product.price),
                            style: theme.textTheme.titleSmall?.copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      )
                    else
                      Text(
                        NumberFormat.currency(
                          symbol: r'$',
                          decimalDigits: 0,
                        ).format(product.price),
                        style: theme.textTheme.displaySmall,
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
