import 'package:custom_smaple/circle_painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: CirclePainter(),
        ),
      ),
    );
  }
}
