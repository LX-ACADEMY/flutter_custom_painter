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

    final path = Path();
    final a1 = Offset(center.dx - halfSide, center.dy + halfSide);
    final a2 = Offset(center.dx + halfSide, center.dy + halfSide);
    final b2 = Offset(a2.dx, a2.dy - side);
    final c2 = Offset(center.dx, center.dy - side);
    final d2 = Offset(center.dx - halfSide, center.dy - halfSide);

    path.moveTo(a1.dx, a1.dy);
    path.lineTo(a2.dx, a2.dy);
    path.lineTo(b2.dx, b2.dy);
    path.lineTo(c2.dx, c2.dy);
    path.lineTo(d2.dx, d2.dy);
    // path.close();
    path.lineTo(a1.dx, a1.dy);

    // canvas.drawLine(a1, a2, paint);
    // canvas.drawLine(a2, b2, paint);
    // canvas.drawLine(b2, c2, paint);
    // canvas.drawLine(c2, d2, paint);
    // canvas.drawLine(d2, a1, paint);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
