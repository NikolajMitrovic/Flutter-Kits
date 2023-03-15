import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  final Widget? child;
  final Duration? duration;
  final double? offset;
  final Axis? axis;

  const ShakeTransition({
    Key? key,
    this.duration,
    this.offset = 140.0,
    required this.child,
    this.axis = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: duration ??const Duration(milliseconds: 300),
      curve: Curves.easeOutQuint,
      tween: Tween(begin: 1, end: 0),
      builder: (context, value, child) {
        return Transform.translate(
          offset: axis == Axis.horizontal
              ? Offset(value * offset!, 0)
              : Offset(0, value * offset!),
          child: child,
        );
      },
      child: child,
    );
  }
}
