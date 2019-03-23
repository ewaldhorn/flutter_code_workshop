import 'package:flutter/material.dart';

class ImagesRevisitedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset('images/tears_logo.jpeg',
            width: 300,
            height: 300,
            fit: BoxFit.fill,
            color: Color.fromARGB(100, 0, 0, 200),
            colorBlendMode: BlendMode.difference));
  }
}
