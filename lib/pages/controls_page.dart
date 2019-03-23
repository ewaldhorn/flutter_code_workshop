import 'package:flutter/material.dart';

class ControlsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text("Any old text label will do",
          style: TextStyle(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center),
      FlatButton(
          child: Text("A Button"), onPressed: () {}, color: Colors.tealAccent),
      OutlineButton(child: Text("A fancier button"), onPressed: () {}),
      Container(
          child: OutlineButton(
              onPressed: () {},
              child: Text("Inside Container"),
              padding: EdgeInsets.all(25.0)),
          margin: EdgeInsets.all(30),
          width: 200),
      TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: "Password Box",
              hintStyle: TextStyle(fontSize: 20),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.greenAccent, width: 5.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(
                      color: Colors.orange,
                      style: BorderStyle.solid,
                      width: 2))),
          obscureText: true)
    ]));
  }
}
