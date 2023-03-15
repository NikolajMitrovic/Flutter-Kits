import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

enum DotsType { rectangle, circle }

class CustomDotsIndicator extends StatelessWidget {
  final List? dotsCount;
  final int? position;
  final Color color;
  final Color? unActiveColor;
  final DotsType type;

  const CustomDotsIndicator({
    Key? key,
    this.dotsCount,
    this.position,
    required this.color,
    this.unActiveColor,
    this.type = DotsType.rectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size dotsType(DotsType val) {
      switch (val) {
        case DotsType.rectangle:
          return const Size(25, 9);
        case DotsType.circle:
          return const Size.square(9);
        default:
          return const Size(25, 9);
      }
    }

    return DotsIndicator(
      dotsCount: dotsCount!.length,
      position: position!.toDouble(),
      decorator: DotsDecorator(
        activeColor: color,
        color: unActiveColor ?? Theme.of(context).hintColor,
        activeSize: dotsType(type),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
