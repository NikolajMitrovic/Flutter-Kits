import 'package:flutter/material.dart';

class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // ignore: cascade_invocations
    path.lineTo(0, 0);
    // ignore: cascade_invocations
    path.lineTo(0, size.height - 40);
    // ignore: cascade_invocations
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    // ignore: cascade_invocations
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 40);
    // ignore: cascade_invocations
    path.lineTo(size.width, 0);
    // ignore: cascade_invocations
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
