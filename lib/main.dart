import 'package:flutter/material.dart';
import 'package:mapd722_health_care/pages/home_page.dart';
import 'package:mapd722_health_care/classes/database.dart';
import 'package:mapd722_health_care/models/constants.dart';

void main() async {
  await DataBase.connect(Constants.MONGO_CONN_URL);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
