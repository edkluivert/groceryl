import 'package:flutter/material.dart';
import 'dart:math' as math;

class NewIndicator extends StatelessWidget {
  const NewIndicator({
    Key? key,
    required this.price,
    required this.compact,
  }) : super(key: key);
  final bool compact;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !compact,
      child: _Triangle(color: Colors.blueGrey.withOpacity(0.1), price: price),
    );
  }
}

class _Triangle extends StatelessWidget {
  const _Triangle({
    Key? key,
    required this.color,
    required this.price
  }) : super(key: key);
  final Color color;
  final String price;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: _ShapesPainter(color),
        child: Container(
            height: 50,
            width: 50,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 16),
                    child: Transform.rotate(
                        angle: math.pi / 4,
                        child: Text(price,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                                fontWeight: FontWeight.w700)))))));
  }
}

class _ShapesPainter extends CustomPainter {
  final Color color;

  _ShapesPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
