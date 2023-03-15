part of '../order_page.dart';


class _BuildProductOrderCard extends StatelessWidget {
  final ProductModel? product;

  const _BuildProductOrderCard({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            const  SizedBox(width: 12),
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(
                    product!.images!.first,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const  EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product!.name!,
                      style: theme.textTheme.headlineSmall,
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                 const     SizedBox(height: 5),
                    Text(
                      '${AppLocalizations.of(context)!.amount}: ${product!.quantity}',
                      style: theme.textTheme.titleMedium,
                    ),
                  const    SizedBox(height: 5),
                    CustomPriceText(value: product!.price!)
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
