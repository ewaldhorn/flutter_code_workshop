import 'package:flutter/material.dart';

class PageBackgroundImage extends StatelessWidget {
  PageBackgroundImage(this.assetPath);

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetPath,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.low,
        color: Color.fromARGB(175, 0, 0, 0),
        colorBlendMode: BlendMode.darken,
        height: double.infinity,
        width: double.infinity);
  }
}
