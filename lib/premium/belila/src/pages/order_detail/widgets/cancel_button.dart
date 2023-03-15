part of '../order_detail_page.dart';

class _CancelButton extends StatelessWidget {
  const _CancelButton({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 9),
        child: CustomElevatedButton(
          color: theme.errorColor,
          onTap: () {
            showToast(msg: AppLocalizations.of(context)!.cancel_order);
          },
          label: AppLocalizations.of(context)!.cancel_order,
        ),
      ),
    );
  }
}
