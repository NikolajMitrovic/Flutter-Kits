part of '../cart_page.dart';


class _BuildCartCard extends StatelessWidget {
  final ProductModel? product;
  final void Function()? onPressedDelete;
  final void Function()? onPressedRemove;
  final void Function()? onPressedAdd;

  const _BuildCartCard(
      {Key? key, required this.product, this.onPressedDelete, this.onPressedRemove, this.onPressedAdd})
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
        height: 120,
        child: Row(
          children: [
            const SizedBox(width: 12),
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(product!.images!.first),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(product!.name!,
                            style: theme.textTheme.headlineSmall,
                            overflow: TextOverflow.clip,
                            maxLines: 2,
                          ),
                        ),
                        const SizedBox(width: 12),
                        InkWell(
                          borderRadius: BorderRadius.circular(25),
                          onTap: onPressedDelete,
                          child: const  Icon(
                            Icons.close,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${AppLocalizations.of(context)!.amount}: ${product!.quantity}',
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomPriceText(value: product!.price! * product!.quantity),
                        ),
                        SizedBox(
                          width: 80,
                          child: Row(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(25),
                                onTap: onPressedRemove,
                                child: Container(
                                  padding: const  EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: theme.primaryColor,
                                  ),
                                  child:  const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(product!.quantity.toString(),
                                  style: theme.textTheme.bodyMedium),
                              const SizedBox(width: 5),
                              InkWell(
                                borderRadius: BorderRadius.circular(25),
                                onTap: onPressedAdd,
                                child: Container(
                                  padding:  const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: const  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
