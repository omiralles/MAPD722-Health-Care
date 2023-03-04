import 'package:flutter/material.dart';
import 'package:mapd722_health_care/pages/home_user_page.dart';
import 'package:mapd722_health_care/pages/sign_in.dart';
import 'package:mapd722_health_care/classes/database.dart';
import 'package:mapd722_health_care/models/constants.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogIn createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  static const String USER_COLLECTION = "users";
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
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
                'LOG IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextFormField(
            controller: usernameController,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'required field';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
              hintText: 'Enter user name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passController,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'required field';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter password',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () async {
              if (_key.currentState!.validate()) {
                if (!await DataBase.getLogin(
                    usernameController.text, passController.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          "LOGIN FAIL. Wrong user or password. Try again")));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeUserPage()));
                }
              }
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
