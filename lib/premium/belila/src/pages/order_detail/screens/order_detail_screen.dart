part of '../order_detail_page.dart';

class BelilaOrderDetailScreen extends StatefulWidget {
  const BelilaOrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<BelilaOrderDetailScreen> createState() => _BelilaOrderDetailScreenState();
}

class _BelilaOrderDetailScreenState extends State<BelilaOrderDetailScreen> {
  late final OrderDetailModel _order = mockOrderDetail;
  final bool _isLoading = false;
  // OrderModel? args;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.order_detail,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: Const.margin,
              ),
              child: Column(
                children: [
                  _BuildInfoOrder(
                    status: _order.status ?? '',
                    date: _order.createdAt!,
                    orderId: _order.id ?? 0,
                    note: _order.note ?? '',
                    message: _order.message ?? '',
                  ),
                  const SizedBox(height: Const.space15),
                  _BuildItemOrder(
                    itemCount: _order.product!,
                  ),
                  const SizedBox(height: Const.space15),
                  _BuildDeliveryDetail(
                      orderId: _order.id ?? 0,
                      noResi: _order.jneCnote ?? '0',
                      shippingMethod: _order.shippingServiceCode ?? '',
                      status: _order.status ?? '',
                      address: '${_order.address?.address} ${_order.address?.village} ${_order.address?.district} ${_order.address?.region} ${_order.address?.zipCode}'),
                  const SizedBox(height: Const.space15),
                  _BuildPaymentInformation(
                    paymentMethod: _order.bankAccount?.bankName ?? '',
                    // proofOfPayment: _order?.proofOfPayment ?? '',
                    handlingFee: _order.fee!,
                    shippingCost: _order.shippingCost!,
                    subTotal: _order.subTotal!,
                    total: _order.total!,
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Const.margin,
              0,
              Const.margin,
              Const.margin,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_order.status == 'on_delivery')
                  _ConfirmOrderButton(
                    order: _order,
                    isLoading: _isLoading,
                  )
                else
                  const SizedBox(),
                if (_order.status == 'waiting')
                  const _CancelButton()
                else
                  const SizedBox(),
                if (_order.status == 'waiting')
                  const _PayButton()
                else
                  const SizedBox(),
                if (_order.status == 'packaging')
                  _RefundButton(order: _order)
                else
                  const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
