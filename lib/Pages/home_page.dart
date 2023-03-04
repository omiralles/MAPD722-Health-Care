import 'package:flutter/material.dart';
import 'package:mapd722_health_care/pages/log_in.dart';
import 'package:mapd722_health_care/classes/language.dart';
import 'package:mapd722_health_care/classes/database.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  void _changeLanguage(Language language) {
    print(language.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              onChanged: (Language? language) {
                _changeLanguage(language!);
              },
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                        value: lang,
                        child: Row(
                          children: <Widget>[Text(lang.flag), Text(lang.name)],
                        ),
                      ))
                  .toList(),
            ),
          ),
          IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()))
                  },
              icon: const Icon(Icons.account_circle))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _mainForm(context),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            width: 550,
            child: Image.asset(
              'assets/images/healthcare.png',
              height: 300,
              width: 500,
            ),
          ),
          const SizedBox(
            height: 40,
            width: 500,
            child: Center(
              child: Text(
                'Welcome to your healthcare App',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 30,
            width: 500,
            child: Center(
              child: Text(
                'In this App you will find',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/appointment.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('Services Appointments'),
                  subtitle: const Text('Manage service appointments.'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/History.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('Patient Records'),
                  subtitle: const Text('Manage patient records.'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    'assets/images/patient.png',
                    height: 50,
                    width: 50,
                  ),
                  title: const Text('Patient Management'),
                  subtitle: const Text('Manage patient profiles.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
