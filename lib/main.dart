import 'package:flutter/material.dart';
import 'package:flutter_talk_mar_2019/app_drawer.dart';

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
        body: Center(child: SnacksRUs()),
        drawer: AppDrawer());
  }
}

class SnacksRUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          final snacksRUs = SnackBar(content: Text("Ok! Ok!"));
          Scaffold.of(context).showSnackBar(snacksRUs);
        },
        onDoubleTap: () {
          final snacksRUs = SnackBar(content: Text("Neato! Have a snack!"));
          Scaffold.of(context).showSnackBar(snacksRUs);
        },
        child: Text("Tap tap / Taaaaaaaaap", style: TextStyle(fontSize: 30)));
  }
}
