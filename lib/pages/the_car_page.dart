import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

class TheCarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TheCarPageState();
  }
}

class _TheCarPageState extends State<TheCarPage>
    with SingleTickerProviderStateMixin {
  ui.Image carImage;
  bool ready = false;

  AnimationController controller;
  Animation<double> animation;

  @override
  void dispose() {
    controller.dispose();
    carImage.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    super.initState();
    _loadImage();
    controller.reset();
    controller.repeat(reverse: false);
  }

  void _loadImage() async {
    var src = await services.rootBundle.load("images/lil_car.png");
    var codec = await ui.instantiateImageCodec(src.buffer.asUint8List());
    var img = await codec.getNextFrame();
    carImage = img.image;
    setState(() {
      ready = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          child: ready
              ? TheCarAnimation(animation: animation, carImage: carImage)
              : Container())
    ]);
  }
}

class TheCarAnimation extends AnimatedWidget {
  TheCarAnimation({Key key, Animation<double> animation, this.carImage})
      : super(key: key, listenable: animation);
  final ui.Image carImage;

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return CustomPaint(
        painter: TheCarPainter(carImage: carImage, mix: animation.value));
  }
}

class TheCarPainter extends CustomPainter {
  TheCarPainter({this.carImage, this.mix});

  final ui.Image carImage;
  final double mix;

  @override
  void paint(ui.Canvas canvas, ui.Size size) {
    Paint roadPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Paint cactusPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    var x = 160 * mix;
    _drawCactus(canvas, x, cactusPaint);
    _drawCactus(canvas, x + 200, cactusPaint);

    canvas.drawImage(carImage, Offset(120, 175), roadPaint);
    canvas.drawLine(Offset(0, 263), Offset(360, 263), roadPaint);
  }

  void _drawCactus(Canvas canvas, double x, Paint cactusPaint) {
    canvas.drawLine(Offset(x + 10, 240), Offset(x + 10, 262), cactusPaint);
    canvas.drawLine(Offset(x + 12, 235), Offset(x + 12, 262), cactusPaint);
    canvas.drawLine(Offset(x + 14, 240), Offset(x + 14, 262), cactusPaint);
  }

  @override
  bool shouldRepaint(TheCarPainter oldDelegate) {
    return oldDelegate.mix != mix;
  }
}
