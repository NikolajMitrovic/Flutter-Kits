part of '../order_detail_page.dart';

class BellcommerceOrderDetailScreen extends StatefulWidget {
  const BellcommerceOrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceOrderDetailScreen> createState() =>
      _BellcommerceOrderDetailScreenState();
}

class _BellcommerceOrderDetailScreenState
    extends State<BellcommerceOrderDetailScreen> {
  late OrderModel _order;

  @override
  void initState() {
    super.initState();
    _order = Get.arguments as OrderModel;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.order_detail,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: Const.space25),
          Text(AppLocalizations.of(context)!.product_ordered,
              style: theme.textTheme.displaySmall),
          const SizedBox(height: Const.space12),
          Column(
            children: _order.items!.map((e) {
              return _BuildProductCard(product: e);
            }).toList(),
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.shipping_details,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Const.radius),
              border: Border.all(color: Theme.of(context).disabledColor),
            ),
            padding: const EdgeInsets.all(Const.space12),
            child: Column(
              children: [
                _BuildListTile(
                  title: AppLocalizations.of(context)!.shipping_date,
                  data: _order.dateShipping ?? '',
                ),
                const SizedBox(height: Const.space12),
                _BuildListTile(
                  title: AppLocalizations.of(context)!.shipping_type,
                  data: _order.shipping ?? '',
                ),
                const SizedBox(height: Const.space12),
                _BuildListTile(
                  title: AppLocalizations.of(context)!.shipping_id,
                  data: _order.noResi ?? '',
                ),
                const SizedBox(height: Const.space12),
                _BuildListTile(
                  title: AppLocalizations.of(context)!.destination,
                  data: _order.address ?? '',
                ),
              ],
            ),
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.payment_details,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Const.margin),
              border: Border.all(color: theme.disabledColor),
            ),
            padding: const EdgeInsets.all(Const.space12),
            child: Column(
              children: [
                _BuildListTile(
                  title:
                      '${AppLocalizations.of(context)!.items_purchased} (${_order.totalItem})',
                  data: '\$ ${_order.price}',
                ),
                const SizedBox(height: Const.space12),
                _BuildListTile(
                    title: AppLocalizations.of(context)!.shipping,
                    data: '\$ ${_order.shippingPrice}'),
                const SizedBox(height: Const.space12),
                _BuildListTile(
                    title: AppLocalizations.of(context)!.import_charges,
                    data: '\$ ${_order.importCharges}'),
                const SizedBox(height: Const.space12),
                _BuildListTile(
                  title: AppLocalizations.of(context)!.total_price,
                  data: '\$ ${_order.totalPrice}',
                  labelSize: 16,
                ),
              ],
            ),
          ),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
