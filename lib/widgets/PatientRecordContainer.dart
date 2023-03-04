import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mapd722_health_care/models/record.dart';
import 'package:mapd722_health_care/widgets/PatientRecordWidget.dart';

class PatientRecordContainer extends StatefulWidget {
  List<Record> listOfRecords;

  PatientRecordContainer(this.listOfRecords);

  @override
  _PatientRecordContainer createState() => _PatientRecordContainer();
}

class _PatientRecordContainer extends State<PatientRecordContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 270,
        child: GridView.builder(
            itemCount: widget.listOfRecords.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {
                  print("A Patient record was pressed");
                },
                child: PatientRecordWidget(widget.listOfRecords[index]),
              );
            }));
  }
}
