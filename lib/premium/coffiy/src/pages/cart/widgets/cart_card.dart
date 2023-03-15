part of '../cart_page.dart';

class _CartCard extends StatelessWidget {
  const _CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Const.margin,
        0,
        Const.margin,
        Const.space12,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              icon: IconlyBold.delete,
              backgroundColor : theme.errorColor,
              onPressed: (context) {},
            ),
          ],
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          child: Container(
            width: Screens.width(context),
            height: 80,
            padding: const EdgeInsets.all(Const.space8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Const.radius),
                  child: OctoImage(
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                    image: CachedNetworkImageProvider(
                      cart.coffee?.image ?? '',
                    ),
                  ),
                ),
                const SizedBox(width: Const.space12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cart.coffee?.name ?? '',
                        style: theme.textTheme.displaySmall,
                      ),
                      const SizedBox(height: Const.space8),
                      Text(
                        '${cart.ice} ${cart.size} ${cart.type}',
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: Const.space8),
                    ],
                  ),
                ),
                const SizedBox(width: Const.space12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'x ${cart.quantity}',
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      NumberFormat.currency(
                        symbol: r'$',
                        decimalDigits: 0,
                      ).format(cart.price),
                      style: theme.textTheme.displaySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
