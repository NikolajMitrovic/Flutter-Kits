part of '../order_detail_page.dart';

class _BuildInfoOrder extends StatelessWidget {
  final String status;
  final DateTime date;
  final String note;
  final String message;
  final int orderId;

  const _BuildInfoOrder({
    Key? key,
    required this.status,
    required this.date,
    required this.orderId,
    required this.note,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String statusTxt(String val) {
      switch (val) {
        case 'pending':
          return AppLocalizations.of(context)!.pending;
        case 'waiting':
          return AppLocalizations.of(context)!.waiting_for_payment;
        case 'process':
          return AppLocalizations.of(context)!.payment_is_being_verified;
        case 'packaging':
          return AppLocalizations.of(context)!.packed_by_seller;
        case 'on_delivery':
          return AppLocalizations.of(context)!.on_delivery;
        case 'success':
          return AppLocalizations.of(context)!.success;
        case 'failed':
          return AppLocalizations.of(context)!.decline;
        case 'cancel':
          return AppLocalizations.of(context)!.cancelled;
        case 'decline':
          return AppLocalizations.of(context)!.canceled_seller;
        default:
          return '';
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.order_status,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: Const.space5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              statusTxt(status),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: Const.space15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.order_number,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Const.space8),
            Text(
              orderId.toString(),
              style: theme.textTheme.displaySmall,
              textAlign: TextAlign.right,
            ),
          ],
        ),
        const SizedBox(height: Const.space15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.purchase_date,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Const.space12),
            Row(
              children: [
                Icon(
                  FeatherIcons.calendar,
                  size: 15,
                  color: theme.disabledColor,
                ),
                const SizedBox(width: Const.space8),
                Text(
                  DateFormat.yMMMMEEEEd('id').format(
                    date,
                  ),
                  style: theme.textTheme.displaySmall,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            const SizedBox(height: Const.space8),
            Row(
              children: [
                Icon(
                  FeatherIcons.clock,
                  size: 15,
                  color: theme.disabledColor,
                ),
                const SizedBox(width: Const.space5),
                Text(
                  DateFormat('HH:mm').format(date),
                  style: theme.textTheme.displaySmall,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ],
        ),
        // const SizedBox(height: Const.space15),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       AppLocalizations.of(context)!.buyer,
        //       style: theme.textTheme.titleMedium,
        //     ),
        //     const SizedBox(width: Const.space12),
        //     Text(
        //       buyerName,
        //       style: theme.textTheme.displaySmall,
        //       textAlign: TextAlign.left,
        //     ),
        //   ],
        // ),
        const SizedBox(height: Const.space15),
        if (note == '')
          const SizedBox()
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.message,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(width: Const.space12),
              Text(
                note,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        const SizedBox(height: Const.space15),
        if (message == '')
          const SizedBox()
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.message,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(width: Const.space12),
              Text(
                message,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ],
          ),
      ],
    );
  }
}
