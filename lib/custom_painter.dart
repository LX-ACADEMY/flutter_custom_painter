import 'package:flutter/material.dart';

class TestPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    const side = 100;
    const halfSide = side / 2;
    final center = Offset(size.width / 2, size.height / 2);

    final a1 = Offset(center.dx - halfSide, center.dy + halfSide);
    final a2 = Offset(center.dx + halfSide, center.dy + halfSide);
    canvas.drawLine(a1, a2, paint);

    final b2 = Offset(a2.dx, a2.dy - side);
    canvas.drawLine(a2, b2, paint);

    final c2 = Offset(center.dx, center.dy - side);
    canvas.drawLine(b2, c2, paint);

    final d2 = Offset(center.dx - halfSide, center.dy - halfSide);
    canvas.drawLine(c2, d2, paint);

    canvas.drawLine(d2, a1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
