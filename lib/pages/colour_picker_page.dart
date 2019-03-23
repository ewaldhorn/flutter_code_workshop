import 'package:flutter/material.dart';
import 'package:flutter_talk_mar_2019/picker/flutter_hsvcolor_picker.dart';

class ColourPickerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColourPickerPageState();
  }
}

class _ColourPickerPageState extends State<ColourPickerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 300,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(1.0))),
                elevation: 4.0,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 2.0),
                    child: ColorPicker(
                        color: Colors.blue, onChanged: (value) {})))));
  }
}
