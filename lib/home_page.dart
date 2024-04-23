import 'package:custom_smaple/arc_painter.dart';
import 'package:custom_smaple/circle_painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double radius = 0;

  // @override
  // void initState() {
  //   Timer.periodic(
  //     const Duration(milliseconds: 50),
  //     (timer) {
  //       if (radius >= 100) {
  //         timer.cancel();
  //       }

  //       setState(() {
  //         radius += 0.5;
  //       });
  //     },
  //   );

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          // painter: CirclePainter(
          //   radius: radius,
          // ),
          painter: ArcPainter(),
        ),
      ),
    );
  }
}
