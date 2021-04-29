import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static Map<String, String> userSettings = {
    "name": "John Doe",
    "phone": "9731 384928",
    "email": "johndoe@gmail.com",
    "address": "mumbai",
    "dob": "1/18/2000"
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
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
                Text(userSettings["name"])
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
                Text(userSettings["phone"])
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
                Text(userSettings["email"])
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
                Text(userSettings["address"])
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
                Text(userSettings["dob"])
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
