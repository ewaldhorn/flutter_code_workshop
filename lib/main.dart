import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_code_workshop/pages/home_page.dart';

void main() {
  // Lock the app in portrait mode, just, because.
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(TalkApp());
}

class TalkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
