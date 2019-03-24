import 'package:flutter/material.dart';

class DialogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(children: <Widget>[
      RaisedButton(
          onPressed: () {
            _showStandardDialog(context);
          },
          child: Text("Standard")),
      RaisedButton(
          onPressed: () {
            _showCustomDialog(context);
          },
          child: Text("Custom"))
    ]));
  }
}

void _showStandardDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Generic Dialog"),
          content: Text("Useless information"),
          actions: <Widget>[
            FlatButton(
                child: Text("Done"),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        );
      });
}

void _showCustomDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 200,
            width: 200,
            child: Column(children: <Widget>[
              Stack(children: [
                Container(height: 50, color: Colors.orangeAccent),
                Container(
                  alignment: Alignment(0, 0),
                  child: FlatButton(
                      child: Text("Dismiss"),
                      color: Colors.orange[300],
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ),
                Center(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 75, 0, 0),
                        height: 100,
                        child: Text("Whatever you want, goes right here!")))
              ])
            ]),
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), right: Radius.circular(10))),
          ),
        );
      },
      barrierDismissible: true);
}
