part of '../home_page.dart';

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: Const.space15),
      child: InkWell(
        onTap: () {
          Get.toNamed<dynamic>(BelilaRoutes.product);
        },
        borderRadius: BorderRadius.circular(Const.radius),
        child: Container(
          width: 166,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            color: theme.cardColor,
          ),
          padding: const EdgeInsets.all(Const.space8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CustomNetworkImage(image: product.image!),
                  if (product.stock! <= 0)
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        AppLocalizations.of(context)!.out_of_stock,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    )
                  else
                    const SizedBox(),
                ],
              ),
              const SizedBox(height: Const.space12),
              Text(
                product.name!,
                style: theme.textTheme.headlineMedium,
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: Const.space5),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: Text(
                      // ignore: lines_longer_than_80_chars
                      '${product.rating} • ${product.sold} ${AppLocalizations.of(context)!.sold}',
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Const.space5),
              Text(
                product.storeName ?? 'error',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: Const.space5),
              Text(
                NumberFormat.currency(
                  symbol: 'Rp. ',
                  decimalDigits: 0,
                ).format(product.price),
                style: theme.textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
