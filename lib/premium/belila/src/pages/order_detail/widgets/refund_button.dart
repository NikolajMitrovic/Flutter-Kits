part of '../order_detail_page.dart';

class _RefundButton extends StatelessWidget {
  const _RefundButton({
    Key? key,
    required this.order,
  }) : super(key: key);

  final OrderDetailModel order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 9),
        child: CustomElevatedButton(
          color: theme.errorColor,
          onTap: () {
            showToast(msg: AppLocalizations.of(context)!.refund_successful);
          },
          label: AppLocalizations.of(context)!.cancel_order,
        ),
      ),
    );
  }
}
