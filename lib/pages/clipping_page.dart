import 'package:flutter/material.dart';

class ClippingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          color: Colors.grey,
          child: Image.asset('images/dogincar.jpg'),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 25)),
      Container(
          color: Colors.grey,
          child: ClipPath(
            child: Image.asset('images/dogincar.jpg'),
            clipper: TriangleClipper(),
          ),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 25)),
      Container(
          color: Colors.grey,
          child: ClipPath(
            child: Image.asset('images/dogincar.jpg'),
            clipper: OvalClipper(),
          ),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 25)),
      Container(
          color: Colors.grey,
          child: ClipPath(
            child: Image.asset('images/dogincar.jpg'),
            clipper: CurvedClipper(),
          ),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 25))
    ]);
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width / 2, size.height / 2);
    path.addOval(Rect.fromLTRB(20, 20, size.width - 20, size.height - 20));
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height - 10);

    var point1 = Offset(size.width / 3, size.height);
    var end1 = Offset(size.width / 2.5, size.height - 20);

    path.quadraticBezierTo(point1.dx, point1.dy, end1.dx, end1.dy);

    var point2 = Offset(size.width - 30, size.height - 15);
    var end2 = Offset(size.width - 50, size.height);
    path.quadraticBezierTo(point2.dx, point2.dy, end2.dx, end2.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
