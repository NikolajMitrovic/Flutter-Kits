import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomPriceText extends StatelessWidget {
  final int value;

  const CustomPriceText({Key? key, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      NumberFormat.currency(
        symbol: r'$ ',
      ).format(value),
      overflow: TextOverflow.clip,
      textAlign: TextAlign.left,
      style: theme.textTheme.headlineMedium!.copyWith(
        color: theme.primaryColor,
      ),
    );
  }
}
