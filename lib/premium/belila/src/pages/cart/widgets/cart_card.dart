part of '../cart_page.dart';

class CartCard extends StatefulWidget {
  final ProductCartModel? product;
  final CartModel? cart;
  final int? qty;
  final VoidCallback? onDelete;
  final VoidCallback? onTapQuantityRemove;
  final VoidCallback? onTapQuantityAdd;
  final bool isLast;
  final bool isFirst;
  final VoidCallback? onChecked;

  const CartCard(
      {Key? key,
      this.product,
      this.cart,
      this.qty,
      this.onDelete,
      this.onTapQuantityRemove,
      this.onTapQuantityAdd,
      this.isLast = true,
      this.isFirst = true,
      this.onChecked})
      : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            label: AppLocalizations.of(context)!.delete,
            backgroundColor : Colors.red,
            icon: Icons.delete,
            onPressed: (context) => widget.onDelete,
          ),
        ],
      ),
      child: Stack(
        children: [
          Card(
            margin: EdgeInsets.only(bottom: widget.isLast ? Const.margin : 0),
            child: Container(
              width: double.infinity,
              height: 145,
              margin: const EdgeInsets.all(Const.margin),
              child: Column(
                children: [
                  if (widget.isFirst)
                    Row(
                      children: [
                        const Icon(Icons.store),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            widget.cart?.product?.store?.name ?? '',
                            style: theme.textTheme.displaySmall,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(AppLocalizations.of(context)!.change,
                            style: theme.textTheme.titleMedium),
                      ],
                    )
                  else
                    const SizedBox(),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: widget.onChecked,
                        child: Icon(
                          (widget.product?.isChecked ?? false)
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: theme.primaryColor,
                        ),
                      ),
                      const VerticalDivider(),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              widget.product!.image!,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.product!.name!,
                              maxLines: 1,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.2),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              NumberFormat.currency(
                                      symbol: 'Rp. ',
                                      decimalDigits: 0,
                                      locale: 'id-ID')
                                  .format(widget.product!.price! *
                                      widget.product!.amount!),
                              style: theme.textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Checkbox(
                          //   value: false,
                          //   activeColor: theme.primaryColor,
                          //   onChanged: (val) {},
                          // ),
                          // SizedBox(height: 15.0),
                          Row(
                            children: [
                              buildCounterButton(context,
                                  icon: Icons.remove,
                                  onTap: widget.onTapQuantityRemove),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  widget.qty.toString(),
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              buildCounterButton(context,
                                  icon: Icons.add,
                                  onTap: widget.onTapQuantityAdd),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (widget.product?.hidden == 'true')
            Container(
              width: double.infinity,
              height: 145,
              color: Colors.black87,
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.product_not_available,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          else
            const SizedBox()
        ],
      ),
    );
  }

  InkWell buildCounterButton(
    BuildContext context, {
    VoidCallback? onTap,
    IconData? icon,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
