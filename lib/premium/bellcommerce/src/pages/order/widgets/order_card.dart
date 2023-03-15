part of '../order_page.dart';

class _OrderCard extends StatelessWidget {
  const _OrderCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed<dynamic>(
        BellcommerceRoutes.orderDetail,
        arguments: order,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Const.space12),
        margin: const EdgeInsets.only(bottom: Const.space15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(context).disabledColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(order.id!,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Theme.of(context).primaryColor)),
            const SizedBox(height: 12),
            Text(order.dateOrder!,
                style: Theme.of(context).textTheme.titleSmall),
            const Divider(),
            orderCardItem(
              context,
              title: AppLocalizations.of(context)!.order_status,
              data: order.orderStatus!,
            ),
            const SizedBox(height: 12),
            orderCardItem(
              context,
              title: AppLocalizations.of(context)!.items,
              data:
                  '${order.totalItem} ${AppLocalizations.of(context)!.items_purchased}',
            ),
            const SizedBox(height: Const.space12),
            priceItem(
              context,
              title: AppLocalizations.of(context)!.price,
              data: '\$ ${order.totalPrice}',
            ),
          ],
        ),
      ),
    );
  }

  Widget orderCardItem(BuildContext context,
      {required String title, required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        Text(data, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }

  Widget priceItem(BuildContext context,
      {required String title, required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        Text(data,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).primaryColor)),
      ],
    );
  }
}
