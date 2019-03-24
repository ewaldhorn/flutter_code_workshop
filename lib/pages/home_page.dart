import 'package:flutter/material.dart';
import 'package:flutter_talk_mar_2019/pages/canvas_page.dart';
import 'package:flutter_talk_mar_2019/pages/clipping_page.dart';
import 'package:flutter_talk_mar_2019/pages/colour_picker_page.dart';
import 'package:flutter_talk_mar_2019/pages/container_page.dart';
import 'package:flutter_talk_mar_2019/pages/controls_page.dart';
import 'package:flutter_talk_mar_2019/pages/dialogs_page.dart';
import 'package:flutter_talk_mar_2019/pages/gif_border_page.dart';
import 'package:flutter_talk_mar_2019/pages/gif_page.dart';
import 'package:flutter_talk_mar_2019/pages/hello_world_page.dart';
import 'package:flutter_talk_mar_2019/pages/images_blend_page.dart';
import 'package:flutter_talk_mar_2019/pages/images_page.dart';
import 'package:flutter_talk_mar_2019/pages/images_revisited_page.dart';
import 'package:flutter_talk_mar_2019/pages/music_page.dart';
import 'package:flutter_talk_mar_2019/pages/snacks_page.dart';
import 'package:flutter_talk_mar_2019/pages/stateful_page.dart';
import 'package:flutter_talk_mar_2019/pages/stateless_page.dart';
import 'package:flutter_talk_mar_2019/pages/text_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey();

  int index = 0;

  Widget get page => items
      .firstWhere((item) => item == null ? false : item.index == index)
      .page;

  List<MenuItem> items = [
    MenuItem(
        index: 0,
        icon: Icons.label_outline,
        text: "Hello World",
        page: HelloWorldPage()),
    MenuItem(
        index: 1, icon: Icons.color_lens, text: "Images", page: ImagesPage()),
    MenuItem(index: 2, icon: Icons.pie_chart, text: "Gifs", page: GifPage()),
    MenuItem(
        index: 3,
        icon: Icons.folder_special,
        text: "More Gifs",
        page: GifBorderPage()),
    MenuItem(
        index: 4,
        icon: Icons.dashboard,
        text: "Images - Revisited",
        page: ImagesRevisitedPage()),
    MenuItem(
        index: 5,
        icon: Icons.access_alarm,
        text: "Images - Blend",
        page: ImagesBlendPage()),
    MenuItem(
        index: 6,
        icon: Icons.keyboard_hide,
        text: "Time for Snacks!",
        page: SnacksPage()),
    MenuItem(
        index: 7,
        icon: Icons.battery_charging_full,
        text: "Texting",
        page: TextPage()),
    MenuItem(
        index: 8,
        icon: Icons.rate_review,
        text: "Containers",
        page: ContainerPage()),
    MenuItem(
        index: 9, icon: Icons.call_end, text: "Controls", page: ControlsPage()),
    MenuItem(
        index: 10,
        icon: Icons.headset,
        text: "Stateless Page",
        page: StatelessPage()),
    MenuItem(
        index: 11,
        icon: Icons.edit,
        text: "Stateful Page",
        page: StatefulPage()),
    MenuItem(
        index: 12,
        icon: Icons.map,
        text: "Image Clipping",
        page: ClippingPage()),
    MenuItem(
        index: 13,
        icon: Icons.surround_sound,
        text: "Music!",
        page: MusicPage()),
    MenuItem(
        index: 14,
        icon: Icons.move_to_inbox,
        text: "Colour Picker",
        page: ColourPickerPage()),
    MenuItem(
        index: 15,
        icon: Icons.format_paint,
        text: "Canvas!",
        page: CanvasPage()),
    MenuItem(
        index: 16,
        icon: Icons.settings_applications,
        text: "Dialogs",
        page: DialogsPage())
  ];

  void drawerTogglePressed() => scaffoldStateKey.currentState.openDrawer();

  void listTileOnTap(MenuItem item) {
    index = item.index;
    Navigator.pop(scaffoldStateKey.currentContext);
  }

  Widget buildAppBar() {
    return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[900],

        //Center
        title: Center(child: Text("Flutter Demo", textAlign: TextAlign.center)),

        //Left
        leading: buildDrawerToggleButton(),

        //Right
        actions: <Widget>[buildDrawerToggleButton()]);
  }

  Widget buildDrawerToggleButton() {
    return IconButton(
        onPressed: drawerTogglePressed,
        icon: IconTheme(
            data: IconThemeData(size: 30.0),
            child: Icon(Icons.dehaze, color: Colors.white)));
  }

  Widget buildDrawer() {
    return Drawer(
        child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: SafeArea(
                child: Column(children: <Widget>[
              //Header
              buildDrawerHeader(),

              //List
              Expanded(
                  child:
                      ListView(children: items.map(buildListViewItem).toList()))
            ]))));
  }

  Widget buildDrawerHeader() {
    return DrawerHeader(
        decoration: BoxDecoration(color: Colors.blue[900]),
        child: Stack(children: <Widget>[
          //Avatar
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 34.0,
                        backgroundColor: Colors.blue[50],
                        backgroundImage: AssetImage("images/flutter_logo.png")),
                    Container(height: 12.0),
                    Text("D. Flutter",
                        style: TextStyle(color: Colors.white, fontSize: 18.0))
                  ])),

          //Button
        ]));
  }

  Widget buildScrollableDrawer() {
    return Drawer(
        child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue[50]),
            child: CustomScrollView(
                scrollDirection: Axis.vertical,
                reverse: false,
                controller: ScrollController(),
                primary: false,
                physics: ScrollPhysics(),
                shrinkWrap: false,
                slivers: <Widget>[
                  //Body
                  SliverList(
                      delegate: SliverChildListDelegate(
                          <Widget>[buildDrawerHeader()])),

                  //Body
                  SliverList(
                      delegate: SliverChildListDelegate(
                          items.map(buildListViewItem).toList()))
                ])));
  }

  Widget buildListViewItem(MenuItem item) {
    if (item == null) return Divider(height: 6.0);

    return ListTile(
        selected: item.index == index,
        leading: Icon(item.icon),
        title: Text(item.text),
        onTap: () => super.setState(() => listTileOnTap(item)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        home: Scaffold(
            key: scaffoldStateKey,
            backgroundColor: Colors.teal[50],
            body: page,
            appBar: buildAppBar(),
            drawer: SafeArea(child: buildScrollableDrawer())));
  }
}

class MenuItem {
  final int index;
  final IconData icon;
  final String text;
  final Widget page;

  MenuItem({this.index, this.icon, this.text, this.page});
}
