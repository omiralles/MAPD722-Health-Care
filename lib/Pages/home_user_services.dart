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
        body: ListView(children: [
      const SizedBox(
        height: 70,
        child: const Center(
          child: Text(
            'PENDING APPOINTMENTS',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
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
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: MaterialButton(
          onPressed: () {
            //Acces to appointment list
          },
          height: 50,
          shape: const StadiumBorder(),
          color: Theme.of(context).primaryColor,
          child: const Center(
            child: Text(
              'Show all appointments',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    ]));
  }
}
