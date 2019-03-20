import 'package:flutter/material.dart';

void main() => runApp(TalkApp());

class TalkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Talk March 2019',
      home: DefaultHomePage(),
    );
  }
}

class DefaultHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Wow, it\'s an app bar!')),
        body: Center(child: Text("Boring page")),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Our Drawer"),
            )
          ],
        )));
  }
}
