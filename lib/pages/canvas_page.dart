import 'package:flutter/material.dart';

class CanvasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 250,
            height: 250,
            child: CustomPaint(painter: PlanPainter())));
  }
}

class PlanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var bluePaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0
      ..color = Colors.blue
      ..isAntiAlias = true;

    var greyPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.grey;

    var blackPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black;

    _drawTitle(canvas);
    _drawBox(canvas, greyPaint);
    _drawDwelling(canvas, blackPaint);
    _drawOrientation(canvas, bluePaint);
  }

  _drawTitle(Canvas canvas) {
    var tp = TextPainter(
        text: TextSpan(
            text: 'Dwelling 45',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(85, 5));
  }

  _drawBox(Canvas canvas, Paint paint) {
    canvas.drawRect(Rect.fromLTWH(0, 25, 250, 250), paint);
  }

  _drawDwelling(Canvas canvas, Paint paint) {
    canvas.drawRect(Rect.fromLTWH(30, 40, 120, 90), paint);
    canvas.drawRect(Rect.fromLTWH(150, 40, 60, 45), paint);
    canvas.drawRect(Rect.fromLTWH(150, 85, 60, 45), paint);
    canvas.drawRect(Rect.fromLTWH(30, 130, 100, 70), paint);
    canvas.drawRect(Rect.fromLTWH(130, 130, 80, 70), paint);
  }

  _drawOrientation(Canvas canvas, Paint paint) {
    canvas.drawLine(Offset(200, 230), Offset(200, 250), paint);
    canvas.drawLine(Offset(200, 230), Offset(195, 235), paint);
    canvas.drawLine(Offset(200, 230), Offset(205, 235), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
