import 'package:flutter/material.dart';
import 'package:mapd722_health_care/models/record.dart';
import 'package:mapd722_health_care/widgets/PatientRecordContainer.dart';

class HomeUserRecords extends StatefulWidget {
  @override
  _HomeUserRecords createState() => _HomeUserRecords();
}

class _HomeUserRecords extends State<HomeUserRecords> {
  List<Record> listOfRecords = [
    Record(0, "Blood presure", "", 80.toDouble(), "02/24/2023"),
    Record(1, "Heart rate", "pm", 80.toDouble(), "02/22/2023"),
    Record(2, "Oxygen in blood", "%", 92.toDouble(), "03/02/2023"),
    Record(3, "Temperature", " C", 80.toDouble(), "02/28/2023"),
    Record(4, "Blood glucose", "", 80.toDouble(), "03/04/2023"),
    Record(5, "Breath rate", "PM", 30.toDouble(), "01/04/2023"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "Last records",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      PatientRecordContainer(listOfRecords),
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "All records",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]));
  }
}
