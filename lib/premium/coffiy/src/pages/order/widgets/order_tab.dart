part of '../order_page.dart';

class _OrderTabView extends StatelessWidget {
  final List<OrderModel> orderList;
  final bool isHistoryOrder;

  const _OrderTabView({
    Key? key,
    required this.orderList,
    this.isHistoryOrder = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
      itemCount: orderList.length,
      padding: const EdgeInsets.fromLTRB(
        Const.margin,
        Const.space25,
        Const.margin,
        Const.space25 * 2.5,
      ),
      itemBuilder: (context, index) {
        final order = orderList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: Const.space15),
          child: InkWell(
            onTap: (isHistoryOrder == true)
                ? () {}
                : () => Get.toNamed<dynamic>(CoffiyRoutes.trackOrder),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DateFormat('dd MMMM | hh:mm').format(order.dateTime!),
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      NumberFormat.currency(
                        symbol: r'$',
                        decimalDigits: 0,
                      ).format(order.total),
                      style: theme.textTheme.displayLarge,
                    ),
                  ],
                ),
                const SizedBox(height: Const.space12),
                Row(
                  children: [
                    SvgPicture.asset(
                      CustomIcons.smallSize,
                      width: 15,
                      color: theme.disabledColor,
                    ),
                    const SizedBox(width: Const.space15),
                    Expanded(
                      child: Text(
                        order.coffee?.name ?? '',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Const.space8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      IconlyLight.location,
                      color: theme.disabledColor,
                      size: 17,
                    ),
                    const SizedBox(width: Const.space12),
                    Expanded(
                      child: Text(
                        order.address ?? '',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Const.space12),
                Divider(color: theme.disabledColor),
              ],
            ),
          ),
        );
      },
    );
  }
}
