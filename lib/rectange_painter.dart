import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    canvas.drawRect(
        Rect.fromPoints(Offset(size.width - 100, size.height - 50),
            Offset(size.width, size.height)),
        paint);

    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: 200,
            height: 100),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
