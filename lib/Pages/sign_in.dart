import 'package:flutter/material.dart';
import 'package:mapd722_health_care/pages/home_user_page.dart';
import 'package:mapd722_health_care/models/user.dart';
import 'package:mapd722_health_care/classes/database.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController sinController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    pass1Controller.dispose();
    pass2Controller.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    ageController.dispose();
    addressController.dispose();
    sinController.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
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
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
              controller: pass1Controller,
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
            TextFormField(
              controller: pass2Controller,
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
                labelText: 'Repeat Password',
                hintText: 'Repeat password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: firstnameController,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'required field';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First name',
                hintText: 'Enter First Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: lastnameController,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'required field';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last name',
                hintText: 'Enter Last Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: ageController,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'required field';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Age',
                hintText: 'Enter Age',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: addressController,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'required field';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address',
                hintText: 'Enter Address',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: phoneController,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'required field';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number',
                hintText: 'Enter Phone Number',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: sinController,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'required field';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SIN number',
                hintText: 'Enter SIN Number',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //Create user and login
                if (_key.currentState!.validate()) {
                  insertUser();
                }
              },
              height: 50,
              shape: const StadiumBorder(),
              color: Theme.of(context).primaryColor,
              child: const Center(
                child: Text(
                  'Create account',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  insertUser() async {
    final user = User(
        M.ObjectId(),
        usernameController.text,
        pass1Controller.text,
        firstnameController.text,
        lastnameController.text,
        addressController.text,
        int.parse(sinController.text),
        int.parse(ageController.text),
        int.parse(phoneController.text));
    await DataBase.insertUser(user);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("User Created. Enter your user and password.")));
    Navigator.pop(context);
  }
}
