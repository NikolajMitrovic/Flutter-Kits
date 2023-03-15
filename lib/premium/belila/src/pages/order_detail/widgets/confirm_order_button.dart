part of '../order_detail_page.dart';

class _ConfirmOrderButton extends StatelessWidget {
  const _ConfirmOrderButton({
    Key? key,
    required this.order,
    required this.isLoading,
  }) : super(key: key);

  final OrderDetailModel order;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: CustomElevatedButton(
          isLoading: isLoading,
          onTap: () {
            showToast(msg: AppLocalizations.of(context)!.confirm_order);
          },
          label: AppLocalizations.of(context)!.goods_received,
        ),
      ),
    );
  }
}
