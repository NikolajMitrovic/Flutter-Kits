part of '../order_detail_page.dart';

class _BuildDeliveryDetail extends StatelessWidget {
  final String address;
  final String noResi;
  final String shippingMethod;
  final String status;
  final int orderId;

  const _BuildDeliveryDetail({
    Key? key,
    required this.address,
    required this.noResi,
    required this.shippingMethod,
    required this.status,
    required this.orderId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String shippingMethodName(String val) {
      switch (val) {
        case 'JTR':
          return 'JNE Trucking';
        case 'JTR250':
          return 'JNE Trucking 250';
        case 'JTR<150':
          return 'JNE Trucking < 150';
        case 'JTR>250':
          return 'JNE Trucking > 250';
        case 'OKE':
          return 'JNE OKE';
        case 'REG':
          return 'JNE Reguler';
        case 'SPS':
          return 'JNE SPS';
        case 'YES':
          return 'JNE YES';
        case 'CTC':
          return 'JNE Intracity';
        case 'CTC+':
          return 'JNE Intracity+';
        case 'COD':
          return 'Cash On Delivery';
        default:
          return '';
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.delivery_details,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space15),
        if (noResi == '0')
          const SizedBox()
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.no_resi,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: Const.space5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      noResi.toString(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  InkWell(
                    onTap: () => Clipboard.setData(
                        ClipboardData(text: noResi.toString())),
                    child: Text(
                      AppLocalizations.of(context)!.copy_code,
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        const SizedBox(height: Const.space15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.shipping_service,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Const.space12),
            Text(
              shippingMethodName(shippingMethod),
              style: theme.textTheme.bodyLarge?.copyWith(
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        const SizedBox(height: Const.space15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.address,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Const.space12),
            Text(
              address,
              style: theme.textTheme.bodyLarge?.copyWith(
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        const SizedBox(height: Const.space25),
        if (status == 'on_delivery' || status == 'success')
          CustomOutlinedButton(
            onTap: () => Get.toNamed<dynamic>(
              BelilaRoutes.trackDelivery,
              arguments: TrackDeliveryArgsModel(
                orderId: 0,
                status: 'success',
              )
            ),
            label: AppLocalizations.of(context)!.track_delivery,
            labelColor: theme.primaryColor,
          )
        else
          const SizedBox(),
        const SizedBox(height: Const.space15),
      ],
    );
  }
}
