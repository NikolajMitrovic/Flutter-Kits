part of '../cart_page.dart';


class _BuildTransactionTile extends StatelessWidget {
  final String label;
  final int value;

  const _BuildTransactionTile({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.left,
          ),
        ),
        Text(
          NumberFormat.currency(
            symbol: r'$',
            decimalDigits: 0,
          ).format(value),
          style: theme.textTheme.displaySmall,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
