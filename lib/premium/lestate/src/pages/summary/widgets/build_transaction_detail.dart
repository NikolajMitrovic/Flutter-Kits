part of '../summary_page.dart';

class _BuildTransactionDetail extends StatelessWidget {
  const _BuildTransactionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.transaction_details,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          _BuildListTile(
            label: AppLocalizations.of(context)!.property_price,
            value: 250,
          ),
          const SizedBox(height: Const.space8),
          _BuildListTile(
            label: AppLocalizations.of(context)!.services_charge,
            value: 25,
          ),
          const SizedBox(height: Const.space8),
          _BuildListTile(
            label: AppLocalizations.of(context)!.tax,
            value: 7,
          ),
          const SizedBox(height: Const.space8),
          Divider(color: theme.disabledColor),
          const SizedBox(height: Const.space8),
          _BuildListTile(
            label: AppLocalizations.of(context)!.total,
            value: 282,
          ),
        ],
      ),
    );
  }
}

class _BuildListTile extends StatelessWidget {
  final String label;
  final int value;

  const _BuildListTile({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyMedium,
        ),
        Text(
          NumberFormat.currency(
            symbol: r'$',
            decimalDigits: 0,
          ).format(value),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Const.accentColor,
          ),
        ),
      ],
    );
  }
}
