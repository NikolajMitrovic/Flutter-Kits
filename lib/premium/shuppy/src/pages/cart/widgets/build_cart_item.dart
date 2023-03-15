part of '../cart_page.dart';

class _BuildCartItem extends StatelessWidget {
  final String label;
  final int value;

  const _BuildCartItem(
      {Key? key,
      required this.label,
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
          style: theme.textTheme.titleMedium,
        ),
        CustomPriceText(value: value)
      ],
    );
  }
}
