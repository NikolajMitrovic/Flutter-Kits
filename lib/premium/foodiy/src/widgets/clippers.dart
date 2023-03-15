import 'package:flutter/material.dart';

class BottomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final xScaling = size.width / size.width;
    final yScaling = size.height / 450.0;
    path.lineTo(0 * xScaling, 406 * yScaling);
    // ignore: cascade_invocations
    path.cubicTo(
      0 * xScaling,
      406 * yScaling,
      93.719 * xScaling,
      428.359 * yScaling,
      187.469 * xScaling,
      428.359 * yScaling,
    );
    // ignore: cascade_invocations
    path.cubicTo(
      281.219 * xScaling,
      428.359 * yScaling,
      size.width * xScaling,
      406 * yScaling,
      size.width * xScaling,
      406 * yScaling,
    );
    // ignore: cascade_invocations
    path.cubicTo(
      size.width * xScaling,
      406 * yScaling,
      size.width * xScaling,
      0 * yScaling,
      size.width * xScaling,
      0 * yScaling,
    );
    // ignore: cascade_invocations
    path.cubicTo(
      size.width * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
    );
    // ignore: cascade_invocations
    path.cubicTo(
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      406 * yScaling,
      0 * xScaling,
      406 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}


