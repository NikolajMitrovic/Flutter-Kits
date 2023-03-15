part of '../order_page.dart';

class ShuppyOrderDetailScreen extends StatelessWidget {
  const ShuppyOrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final order = Get.arguments as OrderModel;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.order_detail,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          _BuildProductOrderList(itemCount: order.products!),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1300),
            child: Text(
              AppLocalizations.of(context)!.destination_address,
              style: theme.textTheme.displaySmall,
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              order.address!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1500),
            child: Text(
              'Order ID: ${order.id}',
              style: theme.textTheme.displaySmall,
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1600),
            child: _BuildOrderItem(
                label: AppLocalizations.of(context)!.total_price,
                value: order.totalOfAllProduct!),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1700),
            child: _BuildOrderItem(
                label: AppLocalizations.of(context)!.shipping_costs,
                value: order.shipping!),
          ),
          const SizedBox(height: 5),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1800),
            child: _BuildOrderItem(
                label: AppLocalizations.of(context)!.total,
                value: order.total!,
                isTotal: true),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1900),
            child: Text(AppLocalizations.of(context)!.order_status,
                style: theme.textTheme.displaySmall),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 2000),
            child: _BuildOrderTimeline(status: order.orderStatus),
          ),
        ],
      ),
    );
  }
}
