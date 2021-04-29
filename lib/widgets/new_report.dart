import '../models/report.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './reportspage.dart';
import 'dart:math';

class NewReport extends StatefulWidget {
  BuildContext context;
  NewReport(this.context);

  @override
  _NewReportState createState() => _NewReportState();
}

class _NewReportState extends State<NewReport> {
  DateTime selectedDate;
  final nameController = TextEditingController();
  final locatoinController = TextEditingController();
  final contactController = TextEditingController();
  final descriptionController = TextEditingController();

  void _presentDatePicker() {
    showDatePicker(
      context: widget.context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        selectedDate = pickedDate;
      });
    });
    print('...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Report"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Your Name",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Location",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Contact No",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20,),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                    labelText: "Description",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      selectedDate == null
                          ? 'No Date Chosen'
                          : 'Picked Date: ${DateFormat.yMd().format(selectedDate)}',
                    ),
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text(
                      'Choose Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: _presentDatePicker,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Random rnd =
                      new Random(DateTime.now().millisecondsSinceEpoch);
                  String complaintId = rnd.nextInt(99999).toString();

                  ReportPage.reportList.add(new Report(
                      complaintId: complaintId,
                      complainantName: nameController.text,
                      complaintTime: selectedDate,
                      complaintDescription: descriptionController.text,
                      crimeType: "cyber crime",
                      location: locatoinController.text));
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
