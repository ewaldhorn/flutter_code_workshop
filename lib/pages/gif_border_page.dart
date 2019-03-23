import 'package:flutter/material.dart';

class GifBorderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.asset('images/cat_tongue.gif'),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.teal, width: 15.0)),
    ));
  }
}
