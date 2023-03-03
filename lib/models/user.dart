import 'package:mongo_dart/mongo_dart.dart';
import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

class User {
  final ObjectId id;
  final String username;
  final String password;
  final String firstname;
  final String lastname;
  final String address;
  final int sin;
  final int age;
  final int phone;

  const User(this.id, this.username, this.password, this.firstname,
      this.lastname, this.address, this.sin, this.age, this.phone);

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'username': username,
      'password': password,
      'firstname': firstname,
      'lastname': lastname,
      'address': address,
      'sin': sin,
      'age': age,
      'phone': phone,
    };
  }
}
