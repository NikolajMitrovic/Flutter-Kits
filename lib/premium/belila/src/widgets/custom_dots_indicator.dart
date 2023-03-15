import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int position;

  const CustomDotsIndicator({
    Key? key,
    required this.dotsCount,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DotsIndicator(
      dotsCount: dotsCount,
      position: position.toDouble(),
      decorator: DotsDecorator(
        activeColor: theme.primaryColor,
        activeSize: const Size(25, 9),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
