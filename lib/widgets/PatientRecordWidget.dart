import 'package:flutter/material.dart';
import 'package:mapd722_health_care/models/record.dart';

class PatientRecordWidget extends StatelessWidget {
  final Record record;

  PatientRecordWidget(this.record, {super.key});

  @override
  Widget build(BuildContext context) {
    //return Card(
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: record.backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            record.getIcon(),
            color: record.contrastColor,
            size: 20,
          ),
          Text(
            record.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'Roboto',
              color: record.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            " ${record.value} ${record.unit}",
            style: TextStyle(
                fontSize: 13,
                color: record.textColor,
                fontWeight: FontWeight.bold),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Date: ${record.recordDate}",
                style: TextStyle(
                    fontSize: 12,
                    color: record.textColor,
                    fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
