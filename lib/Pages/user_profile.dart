import 'package:flutter/material.dart';
import 'package:mapd722_health_care/pages/home_user_page.dart';
import 'package:mapd722_health_care/models/user.dart';
import 'package:mapd722_health_care/classes/database.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController sinController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _mainForm(context),
      ),
    );
  }

  Form _mainForm(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: firstnameController,
            validator: (val) {
              if (val!.isEmpty) {
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
              if (val!.isEmpty) {
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
              if (val!.isEmpty) {
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
              if (val!.isEmpty) {
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
              if (val!.isEmpty) {
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
              if (val!.isEmpty) {
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
              //updateUser();
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text(
                'Update Profile',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  updateUser() async {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("User Updated")));
    Navigator.pop(context);
  }
}
