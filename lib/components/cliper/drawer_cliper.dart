import 'dart:ui';
import 'package:flutter/rendering.dart';

class CustomDrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height / 2 - 30);

    path.arcToPoint(
      Offset(size.width, size.height / 2 + 30),
      radius: Radius.circular(30.0),
      clockwise: false,
    );

    path.lineTo(size.width, size.height / 2 + 10.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
