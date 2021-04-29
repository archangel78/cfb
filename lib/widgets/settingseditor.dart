import 'package:flutter/material.dart';
import './settings.dart';

class SettingsEditor extends StatefulWidget {
  BuildContext context;
  SettingsEditor(this.context);
  @override
  _SettingsEditorState createState() => _SettingsEditorState();
}

class _SettingsEditorState extends State<SettingsEditor> {
  bool isEditing = false;
  @override
  static void resetState() {
    setState() {}
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("New Report"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          child: Column(children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Name: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(Settings.userSettings["name"])
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Text("Phone: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(Settings.userSettings["phone"])
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Text("Email: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(Settings.userSettings["email"])
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Text("Address: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(Settings.userSettings["address"])
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Text("DOB: ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(Settings.userSettings["dob"])
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.center,),
        )
      );
  }
}
