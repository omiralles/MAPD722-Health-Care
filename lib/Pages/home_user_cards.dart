import 'package:flutter/material.dart';

class HomeUserCard extends StatefulWidget {
  @override
  _HomeUserCardState createState() => _HomeUserCardState();
}

class _HomeUserCardState extends State<HomeUserCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Card(
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/appointment.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('My Services'),
                  subtitle: const Text('Create/Modify your services.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('VIEW SERVICES'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/History.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('My Recods'),
                  subtitle: const Text('Create/Modify your records.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('VIEW RECORDS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/patient.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('My patients'),
                  subtitle: const Text('Create/Modify your patients.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('VIEW PATIENTS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/person.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('My Profile'),
                  subtitle: const Text('Modify your profile.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('VIEW PROFILE'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
