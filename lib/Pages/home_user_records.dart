import 'package:flutter/material.dart';
import 'package:mapd722_health_care/models/record.dart';
import 'package:mapd722_health_care/widgets/PatientRecordContainer.dart';

class HomeUserRecords extends StatefulWidget {
  @override
  _HomeUserRecords createState() => _HomeUserRecords();
}

class _HomeUserRecords extends State<HomeUserRecords> {
  List<Record> listOfRecords = [
    Record(0, "Blood presure", "", 80.toDouble(), "02/24/2023", "Mr. Robinson"),
    Record(1, "Heart rate", "pm", 80.toDouble(), "02/22/2023", "Mr. Robinson"),
    Record(
        2, "Oxygen in blood", "%", 92.toDouble(), "03/02/2023", "Mr. Robinson"),
    Record(3, "Temperature", " C", 80.toDouble(), "02/28/2023", "Mr. Robinson"),
    Record(4, "Blood glucose", "", 80.toDouble(), "03/04/2023", "Mr. Robinson"),
    Record(5, "Breath rate", "PM", 30.toDouble(), "01/04/2023", "Mr. Robinson"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "LAST RECORD",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      PatientRecordContainer(listOfRecords),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: MaterialButton(
          onPressed: () {
            //Acces to records list
          },
          height: 50,
          shape: const StadiumBorder(),
          color: Theme.of(context).primaryColor,
          child: const Center(
            child: Text(
              'Show all records',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    ]));
  }
}
