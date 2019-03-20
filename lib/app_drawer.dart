import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_talk_mar_2019/main.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text("Our Drawer"),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          title: Text("Take me Home"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => DefaultHomePage()));
          },
        ),
        ListTile(
            title: Text("Item 2"),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
          title: Text("Item 3"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Item 4"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Item 5"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}
