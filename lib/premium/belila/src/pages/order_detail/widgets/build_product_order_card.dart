part of '../order_detail_page.dart';


class _ProductOrderCard extends StatelessWidget {
  final ProductOrderModel? product;

  const _ProductOrderCard({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context) / 1.5,
      // height: 100.0,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      margin: const EdgeInsets.only(right: Const.space15),
      padding: const EdgeInsets.symmetric(horizontal: Const.space12),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: CachedNetworkImageProvider(product!.image![0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: Const.space12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product!.name!,
                    maxLines: 2,
                    style: theme.textTheme.headlineMedium!.copyWith(height: 1.2),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: Const.space5),
                  // Text(
                  //   NumberFormat.currency(
                  //     symbol: 'Rp. ',
                  //     decimalDigits: 0,
                  //     locale: 'id-ID',
                  //   // ).format(product!.price),
                  //   ).format(0),
                  //   style: theme.textTheme.bodyLarge!.copyWith(
                  //     color: theme.primaryColor,
                  //   ),
                  //   maxLines: 1,
                  //   textAlign: TextAlign.start,
                  // ),
                  // const SizedBox(height: Const.space5),
                  Text(
                    '${AppLocalizations.of(context)!.qty}: ${product?.amount}',
                    maxLines: 2,
                    style: theme.textTheme.titleSmall,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
