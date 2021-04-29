import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/cfblogo.png',
                    fit: BoxFit.cover,
                  ),
                  Text("Crime Free Bharat"),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 8,
                      child: ListTile(
                        leading: Icon(Icons.local_police_rounded, size: 35,),
                        title: Text("Status"),
                        onTap: () {
                          print("Status");
                        },
                      ),
                    ),
                    Card(
                      elevation: 8,
                      child: ListTile(
                        leading: Icon(Icons.search, size: 35,),
                        title: Text("OnGoing Investigation"),
                        onTap: () {
                          print("OnGoing Investigation");
                        },
                      ),
                    ),
                    Card(
                      elevation: 8,
                      child: ListTile(
                        leading: Icon(Icons.file_copy, size: 35,),
                        title: Text("Reports"),
                        onTap: () {
                          print("Reports");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
  
}