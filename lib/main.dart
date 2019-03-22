import 'package:flutter/material.dart';
import 'package:flutter_talk_mar_2019/app_drawer.dart';

void main() => runApp(TalkApp());

class TalkApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TalkAppState();
  }
}

class _TalkAppState extends State<TalkApp> {
  bool _triggerFader = false;
  bool _triggerAnimator = false;

  void triggerFader() {
    setState(() {
      _triggerFader = !_triggerFader;
    });
    print("Called triggerFader in _TalkAppState ($_triggerFader)");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DefaultHomePage(triggerFader: triggerFader));
  }
}

class DefaultHomePage extends StatelessWidget {
  final VoidCallback triggerFader;
  DefaultHomePage({this.triggerFader});

  Fader fader = Fader();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Wow! It\'s an app bar...')),
        body: Center(
            child: ListView(children: <Widget>[
          fader,
          SnacksRUs(toggleVisibility: () {
            triggerFader();
            fader.toggleVisibility();
          })
        ])),
        drawer: AppDrawer());
  }
}

class BigUglyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 200, height: 200, color: Colors.brown);
  }
}

class SnacksRUs extends StatelessWidget {
  final VoidCallback toggleVisibility;

  SnacksRUs({this.toggleVisibility});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          final snacksRUs = SnackBar(
            content: Text("Ok! Ok!"),
            action: SnackBarAction(label: "Tsek!", onPressed: () {}),
          );
          Scaffold.of(context).showSnackBar(snacksRUs);
        },
        onDoubleTap: () {
          final snacksRUs = SnackBar(
              content: Text("Neato! Have a snack!"),
              duration: Duration(seconds: 2));
          Scaffold.of(context).showSnackBar(snacksRUs);
          toggleVisibility();
        },
        child: Text("Tap tap / Taaaaaaaaap",
            style: TextStyle(fontSize: 30), textAlign: TextAlign.center));
  }
}

class Fader extends StatefulWidget {
  _FaderState _faderState;

  void toggleVisibility() {
    print("Fader toggleVisibility called ($_faderState)");
    if (_faderState != null) {
      _faderState.toggleFaderVisibility();
    }
  }

  @override
  State<StatefulWidget> createState() {
    print(">> Fader createState called");
    _faderState = _FaderState();
    return _faderState;
  }
}

class _FaderState extends State<Fader> {
  bool _isVisible = true;

  void toggleFaderVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
    print("_FaderState toggleFaderVisibility called ($_isVisible)");
  }

  @override
  Widget build(BuildContext context) {
    print("_FaderState build called ($_isVisible)");
    return AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 3000),
        child: BigUglyBox());
  }

  @override
  void didUpdateWidget(Fader oldWidget) {
    print("Update called ($_isVisible)");
    super.didUpdateWidget(oldWidget);
  }
}
