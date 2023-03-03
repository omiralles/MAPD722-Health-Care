// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class HomeUserServices extends StatefulWidget {
  @override
  _HomeUserServices createState() => _HomeUserServices();
}

class _HomeUserServices extends State<HomeUserServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('02/24/2023'),
                  subtitle: Text('Service at St Catherine Hospital'),
                  trailing: Icon(Icons.circle_notifications),
                  tileColor: Colors.white,
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('02/24/2023'),
                  subtitle: Text('Mr. Robinson'),
                  trailing: Icon(Icons.check_circle),
                  tileColor: Colors.greenAccent,
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('02/28/2023'),
                  subtitle: Text('Mr. Jhon Smith'),
                  trailing: Icon(Icons.priority_high),
                  tileColor: Color.fromRGBO(255, 180, 180, 1),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}