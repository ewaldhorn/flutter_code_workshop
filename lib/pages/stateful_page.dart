import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatefulPageState();
  }
}

class _StatefulPageState extends State<StatefulPage> {
  bool _isConnected = false;

  void _connectDisconnect(bool status) {
    setState(() {
      _isConnected = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Text(
            "Main knows we are ${_isConnected ? "Connected" : "Disconnected"}",
            style: TextStyle(fontSize: 20)),
        margin: EdgeInsets.all(20),
      ),
      ConnectionManager(
          connected: _isConnected, onConnectDisconnect: _connectDisconnect)
    ]);
  }
}

class ConnectionManager extends StatelessWidget {
  ConnectionManager(
      {Key key, @required this.connected, @required this.onConnectDisconnect})
      : super(key: key);

  final bool connected;
  final ValueChanged<bool> onConnectDisconnect;

  void _handleTap() {
    onConnectDisconnect(!connected);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: _handleTap,
      child: Container(
          width: 200,
          height: 100,
          child: Center(
            child: Text(
              connected ? "Connected" : "Disconnected",
              style: TextStyle(fontSize: 20),
            ),
          ),
          decoration: BoxDecoration(
              color: connected ? Colors.green[200] : Colors.grey)),
    ));
  }
}
