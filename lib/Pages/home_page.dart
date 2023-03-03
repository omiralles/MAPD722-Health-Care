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
    DataBase.connect("users");
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
            height: MediaQuery.of(context).size.height / 4,
            child: const Center(
              child: Text(
                'Home Page information',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
