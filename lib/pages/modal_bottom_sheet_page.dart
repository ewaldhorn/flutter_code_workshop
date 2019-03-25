import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ModalBottomSheetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ModalBottomSheetPageState();
}

class _ModalBottomSheetPageState extends State<ModalBottomSheetPage> {
  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: Column(children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tears_extra_large.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                    "TEARS Animal Rescue (The Emma Animal Rescue Society) is one of the country’s leading organisations;"
                    " its mission is to rescue, rehabilitate and re-home domestic animals, as well as provide veterinary "
                    "services to local communities."),
              ),
              Container(
                  child: FlatButton(
                      child: Text("https://tears.org.za/",
                          style: TextStyle(color: Colors.blue, fontSize: 18)),
                      onPressed: () async {
                        const url = 'https://tears.org.za/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print("Error launching URL");
                        }
                      }))
            ]),
            padding: EdgeInsets.all(10.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            onPressed: _showModalSheet,
            child: const Text('Modal Bottom Sheet')));
  }
}
