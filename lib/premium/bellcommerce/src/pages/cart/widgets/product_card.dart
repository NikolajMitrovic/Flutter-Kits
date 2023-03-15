part of '../cart_page.dart';

class _ProductCard extends StatelessWidget {
  final ProductModel product;

  const _ProductCard({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space5,
      ),
      child: Container(
        width: double.infinity,
        height: 120,
        padding: const EdgeInsets.all(Const.space12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: OctoImage(
                image: CachedNetworkImageProvider(product.image ?? ''),
                height: 75,
                width: 75,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: Const.space15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: Const.space15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            product.title ?? '',
                            style: theme.textTheme.displaySmall,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(width: Const.space15),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(FeatherIcons.x),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            NumberFormat.currency(
                              symbol: r'$',
                            ).format(product.normalPrice),
                            style: theme.textTheme.displayMedium!.apply(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        const _BuildQtyCounter(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
