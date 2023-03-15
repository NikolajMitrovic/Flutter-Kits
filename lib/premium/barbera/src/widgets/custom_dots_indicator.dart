import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  final double position;
  final int itemCount;
  final Color? activeColor;

  const CustomDotsIndicator({
    Key? key,
    required this.position,
    required this.itemCount,
    this.activeColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DotsIndicator(
      dotsCount: itemCount,
      position: position,
      decorator: DotsDecorator(
        activeColor: activeColor ?? theme.primaryColor,
        color: theme.disabledColor,
      ),
    );
  }
}
