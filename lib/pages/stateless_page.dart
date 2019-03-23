import 'package:flutter/material.dart';
import 'package:flutter_talk_mar_2019/widgets/page_background_image.dart';

class StatelessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const widgetWidth = 260.0;

    return Stack(alignment: AlignmentDirectional.center, children: [
      PageBackgroundImage('images/flutter_logo_no_background.png'),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
            child: Text("Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold)),
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0)),
        Container(
          child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: buildHintTextStyle(),
                  enabledBorder: buildOutlineInputBorder(),
                  focusedBorder: buildOutlineInputBorderFocused(),
                  border: buildOutlineInputBorder()),
              style: buildTextStyle()),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          width: widgetWidth,
        ),
        Container(
          child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: buildHintTextStyle(),
                  enabledBorder: buildOutlineInputBorder(),
                  focusedBorder: buildOutlineInputBorderFocused(),
                  border: buildOutlineInputBorder()),
              obscureText: true,
              style: buildTextStyle()),
          width: widgetWidth,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: widgetWidth,
              child: FlatButton(
                  child: Text(
                    "Forgot your password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
        Container(
          child: RaisedButton(
            onPressed: () {},
            child: Text("Next",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w300)),
            color: Colors.white,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                borderSide: BorderSide(color: Colors.white)),
            padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
          ),
          margin: EdgeInsets.fromLTRB(0, 15, 0, 40),
        ),
        Container(
            width: widgetWidth,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              FlatButton(
                  child: Text("Sign Up!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {})
            ]))
      ])
    ]);
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        borderSide: BorderSide(
            color: Colors.white54, style: BorderStyle.solid, width: 2));
  }

  OutlineInputBorder buildOutlineInputBorderFocused() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        borderSide: BorderSide(
            color: Colors.white, style: BorderStyle.solid, width: 5));
  }

  TextStyle buildHintTextStyle() =>
      TextStyle(color: Colors.white54, fontSize: 25);

  TextStyle buildTextStyle() => TextStyle(color: Colors.white, fontSize: 25);
}
