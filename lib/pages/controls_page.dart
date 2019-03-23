import 'package:flutter/material.dart';

class ControlsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(children: <Widget>[
      FlatButton(child: Text("A Button"), onPressed: () {})
    ]));
  }
}
