import 'dart:math';

import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final facePaint = Paint()..color = Colors.yellow;
    final eyePaint = Paint()..color = Colors.black;
    final smilePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);

    const width = 300;
    const eyeGap = width * 0.35;
    const eyeHeight = width * 0.2;
    const eyeRadius = 25.0;

    const noseHeight = 10.0;
    const noseBase = 30.0;
    const smileHeigth = 20.0;

    // canvas.drawRect(
    //     Rect.fromCircle(center: center, radius: width / 2), facePaint);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCircle(center: center, radius: width / 2),
            const Radius.circular(25)),
        facePaint);

    canvas.drawCircle(Offset(center.dx - (eyeGap / 2), center.dy - eyeHeight),
        eyeRadius, eyePaint);
    canvas.drawCircle(Offset(center.dx + (eyeGap / 2), center.dy - eyeHeight),
        eyeRadius, eyePaint);

    final nosePath = Path()
      ..moveTo(center.dx, center.dy + noseHeight)
      ..lineTo(center.dx + noseBase / 2, center.dy + noseHeight)
      ..lineTo(center.dx, center.dy - (noseBase * 1.4) + noseHeight)
      ..lineTo(center.dx - noseBase / 2, center.dy + noseHeight)
      ..close();
    canvas.drawPath(nosePath, eyePaint);

    canvas.drawArc(
      Rect.fromCenter(
          center: Offset(center.dx, center.dy + smileHeigth),
          width: eyeGap,
          height: eyeGap / 2),
      0,
      pi,
      false,
      smilePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
