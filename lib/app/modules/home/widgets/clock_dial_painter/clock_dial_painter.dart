import 'package:flutter/material.dart';
import 'dart:math' as math;

class ClockDialPainter extends CustomPainter {
  final Paint tickPaint;
  final ThemeData theme;

  ClockDialPainter(this.theme) : tickPaint = Paint() {
    tickPaint.color = theme.primaryColor.withOpacity(.2);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final angle = 2 * math.pi / 60;
    final radius = size.width / 2;
    canvas.save();

    canvas.translate(radius, radius);

    List.generate(4, (index) {
      tickPaint.strokeWidth = 3;
      canvas.drawLine(
          Offset(0.0, -radius), Offset(0.0, -radius + 15), tickPaint);
      canvas.rotate(angle * 15);
    });

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

enum ClockText { roman, arabic }
