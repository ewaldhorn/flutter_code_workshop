import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(children: <Widget>[
      Container(
          child: Text('Blue Box',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
          width: 250,
          height: 200),
      Container(
          child: Text('Another Box',
              style:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
          width: 100,
          height: 150,
          alignment: Alignment(0.55, 0.75),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)))),
      ToggleBox(),
      SomeBox(color: Colors.purple, text: "Box 1"),
      SomeBox(color: Colors.purple[600], text: "Box 2"),
      SomeBox(color: Colors.blue[700], text: "Box 3"),
      SomeBox(color: Colors.blue[900], text: "Box 4"),
      SomeBox(color: Colors.orange[800], text: "Box 5"),
      SomeBox(color: Colors.teal[600], text: "Box 6"),
      SomeBox(color: Colors.orange[900], text: "Box 7"),
      SomeBox(color: Colors.blue[900], text: "Box 8")
    ]));
  }
}

class SomeBox extends StatelessWidget {
  final Color color;
  final String text;

  SomeBox({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child:
            Text(text, style: TextStyle(color: Colors.white, fontSize: 20.0)),
        height: 150,
        alignment: Alignment(0, 0));
  }
}

class ToggleBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToggleBoxState();
  }
}

class _ToggleBoxState extends State<ToggleBox> {
  bool _padded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: AnimatedPadding(
            padding: EdgeInsets.all(_padded ? 100.0 : 0.0),
            duration: Duration(seconds: 7),
            child: Container(
                width: 100,
                height: 200,
                color: Colors.indigo,
                alignment: Alignment(0.0, 0.0),
                child: Text("Tap Tap",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center))),
        onDoubleTap: () {
          setState(() {
            _padded = !_padded;
          });
        });
  }
}
