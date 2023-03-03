import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Record {
  final int id;
  final String name;
  final String unit;
  final double value;
  final String recordDate;

  late Color backgroundColor;
  late Color contrastColor;
  late Color textColor;

  Record(this.id, this.name, this.unit, this.value, this.recordDate) {
    generateColors();
  }

  IconData getIcon() {
    IconData icon = Icons.favorite;
    if (name == "Temperature") {
      icon = Icons.thermostat;
    } else if (name == "Heart rate") {
      icon = Icons.monitor_heart;
    }
    return icon;
  }

  void generateColors() {
    backgroundColor = Colors.greenAccent;
    contrastColor = Colors.green;
    textColor = Colors.black;
    var random = Random();
    if (random.nextBool()) {
      backgroundColor = Colors.redAccent;
      contrastColor = const Color.fromRGBO(150, 10, 10, 1);
      textColor = Colors.white;
    }
    ;
  }
}
