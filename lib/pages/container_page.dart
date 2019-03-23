import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(children: <Widget>[
      Container(
          child: Text('Blue Box', style: TextStyle(color: Colors.white)),
          color: Colors.blue,
          width: 250,
          height: 100),
      Container(
          child: Text('Another Box'),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)))),
      ToggleBox()
    ]));
  }
}

class ToggleBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToggleBoxState();
  }
}

class _ToggleBoxState extends State<ToggleBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            width: 100,
            height: 200,
            color: Colors.indigo,
            child: Text("Tap Tap", style: TextStyle(color: Colors.white))),
        onDoubleTap: () {});
  }
}
