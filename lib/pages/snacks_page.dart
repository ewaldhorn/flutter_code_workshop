import 'package:flutter/material.dart';

class SnacksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Yum yum yum. Wait? Where's the snacks!?"),
            action: SnackBarAction(
              label: 'Pfffft!',
              onPressed: () {},
            ),
          );

          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Press for Snacks'),
      ),
    );
  }
}
