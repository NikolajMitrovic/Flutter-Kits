part of '../order_page.dart';

class _BuildOrderItem extends StatelessWidget {
  final String label;
  final bool isTotal;
  final int value;

  const _BuildOrderItem(
      {Key? key,
      required this.label,
      this.isTotal = false,
      required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style:
              isTotal ? theme.textTheme.headlineMedium : theme.textTheme.titleMedium,
        ),
        CustomPriceText(value: value)
      ],
    );
  }
}
