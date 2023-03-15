part of '../order_page.dart';

class _OrderCard extends StatelessWidget {
  final OrderModel? order;
  final VoidCallback? onBuyAgainTap;

  const _OrderCard({
    Key? key,
    this.order,
    this.onBuyAgainTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String orderStatus(String val) {
      switch (val) {
        case 'waiting':
          return AppLocalizations.of(context)!.waiting_for_payment;
        case 'process':
          return AppLocalizations.of(context)!.payment_processed;
        case 'packaging':
          return AppLocalizations.of(context)!.packed;
        case 'on_delivery':
          return AppLocalizations.of(context)!.on_delivery;
        case 'success':
          return AppLocalizations.of(context)!.done;
        case 'failed':
          return AppLocalizations.of(context)!.order_rejected;
        case 'cancel':
          return AppLocalizations.of(context)!.cancelled;
        case 'decline':
          return AppLocalizations.of(context)!.canceled_seller;
        default:
          return '';
      }
    }

    Color orderStatusColor(String val) {
      switch (val) {
        case 'waiting':
          return theme.primaryColor;
        case 'process':
          return theme.primaryColor;
        case 'packaging':
          return theme.primaryColor;
        case 'on_delivery':
          return theme.primaryColor;
        case 'success':
          return theme.primaryColor;
        case 'failed':
          return theme.errorColor;
        case 'cancel':
          return theme.errorColor;
        case 'decline':
          return theme.errorColor;
        default:
          return theme.errorColor;
      }
    }

    return Container(
      width: Screens.width(context),
      height: 225,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        color: theme.cardColor,
      ),
      margin: const EdgeInsets.only(bottom: Const.space15),
      child: InkWell(
        onTap: () => Get.toNamed<dynamic>(BelilaRoutes.orderDetail),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Const.space5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.space12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order?.storeName ?? '',
                        style: theme.textTheme.displaySmall,
                        maxLines: 1,
                      ),
                      const SizedBox(height: Const.space5),
                      Text(
                        // ignore: lines_longer_than_80_chars
                        '${DateFormat.yMMMMd().format(order!.createdAt!)} • ${DateFormat('HH:mm').format(order!.createdAt!)}',
                        style: theme.textTheme.titleSmall,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  Expanded(
                    child: (order?.status == 'success')
                        ? Text(
                            (order?.reviewed == 'false')
                                ? AppLocalizations.of(context)!.done
                                : AppLocalizations.of(context)!.rated,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.primaryColor,
                            ),
                          )
                        : const SizedBox(),
                  )
                ],
              ),
            ),
            Divider(
              color: theme.backgroundColor ,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  CustomNetworkImage(
                    image: order?.productImage ?? Const.image,
                    width: 64,
                    height: 64,
                  ),
                  const SizedBox(width: Const.space12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order?.productName ?? '',
                          style: theme.textTheme.displaySmall,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: theme.backgroundColor ,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.total_payment,
                          style: theme.textTheme.titleSmall,
                          maxLines: 1,
                        ),
                        const SizedBox(height: Const.space5),
                        Text(
                          NumberFormat.currency(symbol: 'Rp. ')
                              .format(order!.total),
                          style: theme.textTheme.headlineMedium,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  if (order!.status! == 'success')
                    CustomElevatedButton(
                      width: 120,
                      height: 30,
                      onTap: onBuyAgainTap,
                      label: (order!.reviewed == 'false')
                          ? AppLocalizations.of(context)!.score
                          : (order!.stock == 0 && order!.reviewed == 'false')
                              ? AppLocalizations.of(context)!.score
                              : (order!.stock == 0)
                                  ? AppLocalizations.of(context)!.out_of_stock
                                  : AppLocalizations.of(context)!.buy_again,
                    )
                  else
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Const.radius),
                        color:
                            orderStatusColor(order!.status!).withOpacity(.1),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: Const.space8,
                        vertical: Const.space5,
                      ),
                      child: Text(
                        orderStatus(order!.status!),
                        style: theme.textTheme.titleMedium!.copyWith(
                          color: orderStatusColor(order!.status!),
                        ),
                      ),
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
