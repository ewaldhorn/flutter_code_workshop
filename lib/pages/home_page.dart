import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey();

  int index = 0;

  Widget get page => this
      .items
      .firstWhere((item) => item == null ? false : item.index == this.index)
      .page;

  List<MenuItem> items = [
    MenuItem(index: 0, icon: Icons.home, text: "Home Page", page: null),
    MenuItem(index: 1, icon: Icons.account_balance, text: "", page: null),
    MenuItem(index: 2, icon: Icons.pie_chart, text: "", page: null),
    MenuItem(index: 3, icon: Icons.folder_special, text: "", page: null),
    MenuItem(index: 4, icon: Icons.dashboard, text: "", page: null),
    MenuItem(index: 5, icon: Icons.landscape, text: "", page: null),
  ];

  void drawerTogglePressed() => this.scaffoldStateKey.currentState.openDrawer();

  void listTileOnTap(MenuItem item) {
    this.index = item.index;
  }

  Widget buildAppBar() {
    return new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[900],

        //Center
        title: new Center(
            child: new Text("Flutter Demo", textAlign: TextAlign.center)),

        //Left
        leading: new IconButton(
            onPressed: this.drawerTogglePressed,
            icon: new IconTheme(
                data: IconThemeData(size: 30.0),
                child: new Icon(Icons.dehaze, color: Colors.white))),

        //Right
        actions: <Widget>[
          new IconButton(
              onPressed: this.drawerTogglePressed,
              icon: new IconTheme(
                  data: IconThemeData(size: 30.0),
                  child: new Icon(Icons.dehaze, color: Colors.white)))
        ]);
  }

  Widget buildDrawer() {
    return new Drawer(
        child: new DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: new Column(children: <Widget>[
              //Header
              this.buildDrawerHeader(),

              //List
              new Expanded(
                  child: new ListView(
                      children:
                          this.items.map(this.buildListViewItem).toList()))
            ])));
  }

  Widget buildDrawerHeader() {
    return new DrawerHeader(
        decoration: new BoxDecoration(color: Colors.blue[900]),
        child: new Stack(children: <Widget>[
          //Avatar
          new Align(
              alignment: Alignment.center,
              child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new CircleAvatar(
                        radius: 34.0,
                        backgroundColor: Colors.blue[50],
                        backgroundImage:
                            new AssetImage("images/flutter_logo.png")),
                    new Container(height: 10.0),
                    new Text("D. Flutter",
                        style:
                            new TextStyle(color: Colors.white, fontSize: 18.0))
                  ])),

          //Button
        ]));
  }

  Widget buildDrawer22() {
    return new Drawer(
        child: new DecoratedBox(
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
                  new SliverList(
                      delegate: SliverChildListDelegate(
                          <Widget>[this.buildDrawerHeader()])),

                  //Body
                  new SliverList(
                      delegate: SliverChildListDelegate(
                          this.items.map(this.buildListViewItem).toList()))
                ])));
  }

  Widget buildListViewItem(MenuItem item) {
    if (item == null) return new Divider(height: 6.0);

    return new ListTile(
        selected: item.index == this.index,
        leading: new Icon(item.icon),
        title: new Text(item.text),
        onTap: () => super.setState(() => this.listTileOnTap(item)));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        home: new Scaffold(
            key: this.scaffoldStateKey,
            backgroundColor: Colors.teal,
            body: this.page,
            appBar: this.buildAppBar(),
            drawer: this.buildDrawer22()));
  }
}

class MenuItem {
  final int index;
  final IconData icon;
  final String text;
  final Widget page;

  MenuItem({this.index, this.icon, this.text, this.page});
}
