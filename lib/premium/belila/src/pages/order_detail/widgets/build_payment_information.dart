part of '../order_detail_page.dart';

class _BuildPaymentInformation extends StatelessWidget {
  final String paymentMethod;
  // final String proofOfPayment;
  final int handlingFee;
  final int shippingCost;
  final int subTotal;
  final int total;

  const _BuildPaymentInformation({
    Key? key,
    required this.paymentMethod,
    // required this.proofOfPayment,
    required this.handlingFee,
    required this.shippingCost,
    required this.subTotal,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.payment_information,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.payment_method,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(width: Const.space12),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  paymentMethod,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(height: Const.space5),
        // (proofOfPayment == '')
        //     ? const SizedBox()
        //     : Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             AppLocalizations.of(context)!.proof_of_payment,
        //             style: theme.textTheme.titleMedium,
        //           ),
        //           const SizedBox(width: Const.space12),
        //           Expanded(
        //             child: Align(
        //               alignment: Alignment.centerRight,
        //               child: InkWell(
        //                 onTap: () => Get.toNamed(
        //                   Routes.photoView,
        //                   arguments: proofOfPayment,
        //                 ),
        //                 child: Text(
        //                   AppLocalizations.of(context)!.view_photos,
        //                   style: theme.textTheme.bodyLarge?.copyWith(
        //                     color: theme.primaryColor,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        Divider(color: theme.hintColor),
        _BuildPaymentTile(
          title: AppLocalizations.of(context)!.handling_fee,
          value: handlingFee,
        ),
        _BuildPaymentTile(
          title: AppLocalizations.of(context)!.shipping_cost,
          value: shippingCost,
        ),
        _BuildPaymentTile(
          title: AppLocalizations.of(context)!.total,
          value: subTotal,
        ),
        Divider(color: theme.hintColor),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.total,
              style: theme.textTheme.bodyLarge,
            ),
            Text(
              NumberFormat.currency(
                symbol: 'Rp. ',
                decimalDigits: 0,
              ).format(total),
              style: theme.textTheme.displaySmall,
            ),
          ],
        ),
      ],
    );
  }
}

class _BuildPaymentTile extends StatelessWidget {
  final String title;
  final int value;

  const _BuildPaymentTile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium,
        ),
        Text(
          NumberFormat.currency(
            symbol: 'Rp. ',
            decimalDigits: 0,
          ).format(value),
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
