import 'dart:ui';
import 'package:flutter/material.dart';

// found this style at
class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}

class BackgroundPainter extends CustomPainter {
  final Paint linePaint;
  final Paint bluePaint;
  final Paint greyPaint;
  final Paint orangePaint;

  BackgroundPainter()
      : bluePaint = Paint()
          ..color = Colors.indigo.shade800
          ..style = PaintingStyle.fill,
        greyPaint = Paint()
          ..color = Colors.indigo.shade50
          ..style = PaintingStyle.fill,
        orangePaint = Paint()
          ..color = Colors.yellowAccent.shade700
          ..style = PaintingStyle.fill,
        linePaint = Paint()
          ..color = Colors.yellowAccent.shade700
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;

  @override
  void paint(Canvas canvas, Size size) {
    paintBlue(size, canvas);
    paintDark(size, canvas);
  }

  void paintBlue(Size size, Canvas canvas) {
    final path = Path();

    path.moveTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, bluePaint);
  }

  void paintDark(Size size, Canvas canvas) {
    final path = Path();

    path.moveTo(size.width, 300);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, orangePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
