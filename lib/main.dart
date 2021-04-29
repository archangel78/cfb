import './widgets/settings.dart';
import './widgets/new_report.dart';
import './widgets/callrecords.dart';
import './widgets/dashboard.dart';
import './widgets/reportspage.dart';
import './widgets/settingseditor.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int navigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Cfb Help"),
      backgroundColor: Colors.blue,
    );
    //Widget tab which stores the widgets displayed when different items in bottom navigation bar is selected
    final tabs = <Widget>[Dashboard(), ReportPage(), CallRecords(), Settings()];

    return MaterialApp(
      home: Scaffold(
          appBar: appBar,
          body: tabs[navigationBarIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navigationBarIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            iconSize: 28,
            selectedFontSize: 17,
            unselectedFontSize: 14,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_customize),
                  title: Text("Dashboard")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_copy), title: Text("Your Reports")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call), title: Text("Call Records")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), title: Text("Profile"))
            ],
            onTap: (index) {
              setState(() {
                navigationBarIndex = index;
              });
            },
          ),
          floatingActionButton:
              (navigationBarIndex == 1 || navigationBarIndex == 3)
                  ? FloatingIconButton(navigationBarIndex)
                  : null),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FloatingIconButton extends StatelessWidget {
  int index;
  FloatingIconButton(int index) {
    this.index = index;
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon((index == 1) ? Icons.add : Icons.edit),
        onPressed: () {
          if (index == 1)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewReport(context)),
            );
          else
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsEditor(context)),
            );
        });
  }
}
