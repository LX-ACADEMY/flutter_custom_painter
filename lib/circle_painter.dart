import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final double radius;

  CirclePainter({
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius / 2,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.fill
        ..blendMode = BlendMode.multiply,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is CirclePainter) {
      return oldDelegate.radius != radius;
    }

    return false;
  }
}
