import 'package:flutter/cupertino.dart';

class Report{
  String complaintId;
  String complainantName;
  DateTime complaintTime;
  String complaintDescription;
  String crimeType;
  String location;
  
  Report({@required this.complaintId, @required this.complainantName, @required this.complaintTime, @required this.complaintDescription, @required this.crimeType, @required this.location});
}