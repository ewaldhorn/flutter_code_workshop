import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  final fontSize = 40.0;
  @override
  Widget build(BuildContext context) {
    Paint greyPaint = Paint();
    greyPaint.color = Colors.grey;

    return Center(
        child: ListView(children: [
      Text("Boring old text."),
      Text(
        "A tad bolder",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text("Screwy", style: TextStyle(fontStyle: FontStyle.italic)),
      Text("Cheerful", style: TextStyle(color: Colors.yellowAccent)),
      Text("Readable Cheerful",
          style: TextStyle(color: Colors.yellowAccent, background: greyPaint)),
      Text("Quite Large", style: (TextStyle(fontSize: fontSize))),
      Text("Freakishly Large", style: TextStyle(fontSize: 70.0)),
      Text("Teeny tiny", style: TextStyle(fontSize: 5.0)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w100)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w200)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w300)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w400)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w700)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w800)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w900)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w800)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w700)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w400)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w300)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w200)),
      Text("Font Weight",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w100)),
      Text("Simple Shadow",
          style: TextStyle(
              fontSize: fontSize, shadows: [Shadow(offset: Offset(1.0, 1.0))])),
      Text("Cheerful",
          style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: fontSize,
              shadows: [Shadow(offset: Offset(0.5, -0.5))])),
      Text(
        "Blurry",
        style: TextStyle(
            fontSize: fontSize,
            color: Colors.indigo,
            shadows: [Shadow(blurRadius: 10)]),
      ),
      Text("Colour Shadow",
          style: TextStyle(
              fontSize: fontSize,
              color: Colors.teal,
              shadows: [Shadow(offset: Offset(-2.0, 0), color: Colors.red)])),
      Text("Multiple Shadows",
          style: TextStyle(fontSize: fontSize, color: Colors.indigo, shadows: [
            Shadow(color: Colors.orange, offset: Offset(2.0, 2.0)),
            Shadow(color: Colors.purple, offset: Offset(2.0, -3.0)),
            Shadow(blurRadius: 10)
          ])),
      Text("TEARS Animal Rescue", style: TextStyle(fontSize: fontSize - 15)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 0.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 1.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 1.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 2.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 2.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 2.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 1.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 1.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 0.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: 0.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: -0.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: -1.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: -1.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: -2.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: -2.5)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, letterSpacing: -3.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, wordSpacing: 1.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, wordSpacing: 3.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, wordSpacing: 6.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, wordSpacing: 9.0)),
      Text("TEARS Animal Rescue",
          style: TextStyle(fontSize: fontSize - 15, wordSpacing: 3.0)),
      Text(
        "TEARS Animal Rescue",
        style: TextStyle(fontSize: fontSize - 15),
        textAlign: TextAlign.center,
      ),
      Text(
        "TEARS Animal Rescue",
        style: TextStyle(fontSize: fontSize - 15),
        textAlign: TextAlign.end,
      ),
      Text(
        "TEARS Animal Rescue",
        style: TextStyle(fontSize: fontSize - 15),
        textScaleFactor: 0.50,
      ),
      Text("TEARS Animal Rescue",
          style: TextStyle(
              fontSize: fontSize - 15,
              fontFamily: 'Merienda',
              fontStyle: FontStyle.normal)),
      RichText(
          text: TextSpan(
              style: TextStyle(
                  fontSize: fontSize - 15,
                  color: Colors.deepPurple,
                  letterSpacing: 2.0,
                  wordSpacing: 2.0),
              children: [
            TextSpan(text: 'TEARS'),
            TextSpan(text: 'Animal', style: TextStyle(color: Colors.orange)),
            TextSpan(
                text: 'Rescue', style: TextStyle(fontWeight: FontWeight.bold))
          ]))
    ]));
  }
}
