import '../models/report.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportPage extends StatelessWidget {
  static final List<Report> reportList = [
    Report(
        complainantName: "Deva",
        complaintTime: DateTime.now(),
        complaintId: "12345",
        complaintDescription: "Cyber Bullying",
        crimeType: "Cyber Crime",
        location: "india"),
    Report(
        complainantName: "Taniya",
        complaintTime: DateTime.now(),
        complaintId: "12245",
        complaintDescription: "Murder",
        crimeType: "Homicide",
        location: "india"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Card(
              elevation: 8,
              child: Container(
                height: 120,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Complaint Id: " + reportList[index].complaintId,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Complainant Name: " +
                        reportList[index].complainantName),
                    Text("Date: " +
                        DateFormat.yMd()
                            .format(reportList[index].complaintTime)),
                    Text("Crime Type: " + reportList[index].crimeType),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: reportList.length,
    );
  }
}
